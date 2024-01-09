using HttpStack;
using Microsoft.Extensions.DependencyInjection;
using WebFormsCore;

namespace WorkerExample;

public static class Startup
{
    public static void ConfigureServices(IServiceCollection services)
    {
    }

    public static void Configure(IHttpStackBuilder app)
    {
        app.Run(async context =>
        {
            if (context.Request.Path == "/favicon.ico")
            {
                context.Response.StatusCode = 404;
                return;
            }

            await context.ExecutePageAsync<Default>();
        });
    }
}

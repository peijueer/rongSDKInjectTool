.class Lcom/anzhi/plugin/framework/PluginActivityProxy$1;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->b:I

    iput p3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->c:I

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->b:I

    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 504
    return-void
.end method

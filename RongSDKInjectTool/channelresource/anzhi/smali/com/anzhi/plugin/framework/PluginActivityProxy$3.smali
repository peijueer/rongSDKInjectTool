.class Lcom/anzhi/plugin/framework/PluginActivityProxy$3;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-object p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->b:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->c:I

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->b:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    return-void
.end method

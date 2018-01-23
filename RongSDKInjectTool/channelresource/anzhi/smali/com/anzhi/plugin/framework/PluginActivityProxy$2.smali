.class Lcom/anzhi/plugin/framework/PluginActivityProxy$2;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:I

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->b:I

    iput-object p3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->c:Landroid/view/View;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 522
    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 523
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 524
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 525
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 526
    return-void
.end method

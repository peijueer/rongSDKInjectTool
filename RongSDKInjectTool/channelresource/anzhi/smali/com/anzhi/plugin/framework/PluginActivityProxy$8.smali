.class Lcom/anzhi/plugin/framework/PluginActivityProxy$8;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:Lcom/anzhi/plugin/framework/PluginPage;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Lcom/anzhi/plugin/framework/PluginPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-object p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->b:Lcom/anzhi/plugin/framework/PluginPage;

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 858
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FINISH PAGE {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->b:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->b:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 860
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->b:Lcom/anzhi/plugin/framework/PluginPage;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-ne v0, v1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 862
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 863
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageDestory()V

    .line 864
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getRequestCode()I

    move-result v1

    .line 865
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getResultCode()I

    move-result v2

    .line 866
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getResultData()Landroid/content/Intent;

    move-result-object v3

    .line 867
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v4, v4, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v4}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 868
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 870
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v4, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    iget-object v5, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v5, v5, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anzhi/plugin/framework/PluginPage;

    iput-object v0, v4, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 874
    if-lez v1, :cond_2

    .line 875
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResult(IILandroid/content/Intent;)V

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResume()V

    .line 878
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 879
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;->b:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

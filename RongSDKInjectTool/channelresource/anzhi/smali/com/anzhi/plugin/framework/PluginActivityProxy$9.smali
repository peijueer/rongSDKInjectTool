.class Lcom/anzhi/plugin/framework/PluginActivityProxy$9;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-boolean p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->b:Z

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 904
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FINISH PAGE finishAll force= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 920
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 936
    :cond_0
    :goto_1
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anzhi/plugin/framework/PluginPage;

    .line 907
    iget-boolean v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->b:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->canFinish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 908
    :cond_2
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 911
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 912
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 913
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageDestory()V

    .line 914
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 915
    add-int/lit8 v1, v1, -0x1

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FINISH PAGE {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    :cond_3
    move v0, v1

    .line 905
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 923
    :cond_4
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anzhi/plugin/framework/PluginPage;

    iput-object v0, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 924
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResume()V

    .line 925
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 926
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 929
    iget-boolean v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 931
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

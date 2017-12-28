.class Lcom/anzhi/plugin/framework/PluginActivityProxy$7;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private final synthetic b:Ljava/lang/Class;

.field private final synthetic c:Landroid/content/Intent;

.field private final synthetic d:I

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Ljava/lang/Class;Landroid/content/Intent;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-object p2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    iput p4, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    iput-boolean p5, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->e:Z

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 770
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "START_PAGE {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, intent= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->b:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 772
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anzhi/plugin/framework/PluginPage;

    .line 773
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "START_PAGE {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} is has exists, move to top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 776
    iget-object v3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anzhi/plugin/framework/PluginPage;

    iput-object v1, v3, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 777
    :goto_0
    iget-boolean v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 785
    :cond_0
    iget-boolean v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->e:Z

    if-nez v1, :cond_4

    .line 786
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 787
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 791
    :goto_1
    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    if-lez v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/framework/PluginPage;->setRequestCode(I)V

    .line 794
    :cond_1
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/framework/PluginPage;->setIntent(Landroid/content/Intent;)V

    .line 795
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/framework/PluginPage;->onPageNewIntent(Landroid/content/Intent;)V

    .line 796
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResume()V

    .line 797
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 798
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-boolean v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->e:Z

    if-eqz v2, :cond_2

    .line 800
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 801
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 802
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getPageDefaultBackgroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 803
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 804
    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :cond_2
    :goto_2
    return-void

    .line 778
    :cond_3
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anzhi/plugin/framework/PluginPage;

    .line 779
    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 780
    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPageDestory()V

    .line 781
    iget-object v3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v3, v3, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FINISH PAGE {"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 789
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 807
    :cond_5
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setVirtualActivity(Lcom/anzhi/plugin/framework/PluginActivityProxy;)V

    .line 808
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setIntent(Landroid/content/Intent;)V

    .line 809
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v1, :cond_6

    .line 810
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 811
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 813
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->e:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 820
    :cond_7
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 821
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iput-object v0, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 822
    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    if-lez v2, :cond_8

    .line 823
    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->d:I

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/framework/PluginPage;->setRequestCode(I)V

    .line 825
    :cond_8
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->c:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/framework/PluginPage;->onPageCreate(Landroid/content/Intent;)V

    .line 827
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResume()V

    .line 828
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 829
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 831
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 832
    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->getPageDefaultBackgroundColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 833
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 834
    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 833
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->hideLastPage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 814
    :cond_9
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anzhi/plugin/framework/PluginPage;

    .line 815
    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 816
    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->onPageDestory()V

    .line 817
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v2, v2, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lcom/anzhi/plugin/framework/PluginPage;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 818
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FINISH PAGE {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

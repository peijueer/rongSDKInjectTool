.class public abstract Lcom/anzhi/plugin/framework/PluginPage;
.super Ljava/lang/Object;
.source "PluginPage.java"


# instance fields
.field private a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

.field private b:Landroid/content/Intent;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/content/Intent;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->d:Z

    .line 54
    iput v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->e:I

    .line 55
    iput v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->f:I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->h:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/anzhi/plugin/framework/PluginPage;->getLaunchMode()I

    move-result v0

    iput v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->i:I

    .line 67
    return-void
.end method


# virtual methods
.method public canFinish()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public closeInput()V
    .locals 3

    .prologue
    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/anzhi/plugin/framework/PluginPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/anzhi/plugin/framework/PluginPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createParceableItem(Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->createParceableItem(Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public createParceableItems(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->createParceableItems(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dip2px(F)I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public dismissDialogSafe(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->dismissDialogSafe(Landroid/app/Dialog;)V

    .line 574
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 746
    iget v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 747
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 755
    :goto_0
    return v0

    .line 751
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_1

    .line 752
    check-cast p1, Lcom/anzhi/plugin/framework/PluginPage;

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginPage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/anzhi/plugin/framework/PluginPage;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishAllPage()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->finishAllPage(Z)V

    .line 347
    return-void
.end method

.method public finishAllPage(Z)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->finishAllPage(Z)V

    .line 354
    return-void
.end method

.method public finishPage()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->finishPage(Lcom/anzhi/plugin/framework/PluginPage;)V

    .line 340
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimensionPixel(I)I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getDimensionPixel(I)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getLaunchMode()I
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public getMainPluginVirtualActivity()Lcom/anzhi/plugin/framework/PluginActivityProxy;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    return-object v0
.end method

.method public getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getPageDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    return v0
.end method

.method public getRaw(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getRaw(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->e:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->f:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->c:Landroid/view/View;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anzhi/plugin/framework/PluginPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    const-string v1, "\u672a\u6dfb\u52a0\u5e03\u5c40\uff0c\u8bf7\u901a\u8fc7setPageContentView\u6dfb\u52a0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const-string v1, "\u672a\u6dfb\u52a0\u5e03\u5c40\uff0c\u8bf7\u901a\u8fc7setPageContentView\u6dfb\u52a0"

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideLastPage()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->inflate(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isInvokeOnResume()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->d:Z

    return v0
.end method

.method public isPageFinish()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isPageLoadCompleted()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPauseState()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 682
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public onPageCreate(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public onPageDestory()V
    .locals 0

    .prologue
    .line 655
    return-void
.end method

.method public onPageNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onPagePause()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method public onPageResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public onPageResume()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onPageStart()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public onPageStop()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 601
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public px2dip(F)I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->px2dip(F)I

    move-result v0

    return v0
.end method

.method protected setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->b:Landroid/content/Intent;

    .line 184
    return-void
.end method

.method protected setInvokeOnResume(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->d:Z

    .line 208
    return-void
.end method

.method public final setPageContentView(I)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v0, v0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->f:Landroid/view/LayoutInflater;

    .line 203
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    iget-object v1, v1, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->c:Landroid/view/View;

    .line 204
    return-void
.end method

.method public final setPageContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->c:Landroid/view/View;

    .line 193
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->e:I

    .line 234
    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->f:I

    .line 238
    return-void
.end method

.method public setResultCode(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->f:I

    .line 242
    iput-object p2, p0, Lcom/anzhi/plugin/framework/PluginPage;->g:Landroid/content/Intent;

    .line 243
    return-void
.end method

.method public setResultData(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->g:Landroid/content/Intent;

    .line 247
    return-void
.end method

.method protected setVirtualActivity(Lcom/anzhi/plugin/framework/PluginActivityProxy;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    .line 180
    return-void
.end method

.method public showDialogSafe(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showDialogSafe(Landroid/app/Dialog;)V

    .line 584
    return-void
.end method

.method public showToastSafe(II)V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showToastSafe(II)V

    .line 534
    return-void
.end method

.method public varargs showToastSafe(II[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showToastSafe(II[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method public showToastSafe(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showToastSafe(Landroid/view/View;I)V

    .line 538
    return-void
.end method

.method public showToastSafe(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anzhi/plugin/framework/PluginPage;->showToastSafe(Ljava/lang/CharSequence;I)V

    .line 530
    return-void
.end method

.method public showToastSafe(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showToastSafe(Ljava/lang/CharSequence;I)V

    .line 550
    return-void
.end method

.method public startPage(Ljava/lang/Class;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 299
    return-void
.end method

.method public startPage(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 263
    return-void
.end method

.method public startPage(Ljava/lang/Class;Landroid/content/Intent;Z)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 277
    return-void
.end method

.method public startPage(Ljava/lang/Class;Z)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 289
    return-void
.end method

.method public startPageForResult(Ljava/lang/Class;I)V
    .locals 3

    .prologue
    .line 328
    if-lez p2, :cond_0

    .line 329
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 330
    return-void

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPageForResult must request >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPageForResult(Ljava/lang/Class;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 312
    if-lez p3, :cond_0

    .line 313
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginPage;->a:Lcom/anzhi/plugin/framework/PluginActivityProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 314
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPageForResult must request >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

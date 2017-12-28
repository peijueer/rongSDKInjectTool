.class public abstract Lcom/anzhi/plugin/loader/PluginBaseActivity;
.super Landroid/app/Activity;
.source "PluginBaseActivity.java"


# instance fields
.field private a:I

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity$1;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;)V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->b:Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->b:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 111
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->b:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 599
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getRelativeMotionEventInView(Landroid/view/View;Landroid/view/MotionEvent;Ljava/util/concurrent/atomic/AtomicBoolean;)Landroid/view/MotionEvent;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 493
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 496
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 498
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 499
    aget v3, v2, v1

    .line 500
    aget v4, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 501
    aget v5, v2, v0

    .line 502
    aget v2, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v3

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    cmpg-float v4, v6, v4

    if-gez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2

    .line 504
    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 508
    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 505
    goto :goto_1
.end method

.method public static isMotionEventInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 478
    :cond_1
    :goto_0
    return v0

    .line 470
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 472
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 473
    aget v3, v2, v1

    .line 474
    aget v4, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 475
    aget v5, v2, v0

    .line 476
    aget v2, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 604
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public dip2px(F)I
    .locals 1

    .prologue
    .line 521
    invoke-static {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->dip2px(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public dismissDialogSafe(I)V
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 381
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity$7;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;I)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dismissDialogSafe(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity$8;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getColorRes(I)I
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getDefaultHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public getDimensionPixel(I)I
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getResDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getUIThreadId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const/4 v0, 0x0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isIntentAvailable(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 453
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a()Z

    .line 99
    return-void
.end method

.method public abstract onHandleMessage(Landroid/os/Message;)V
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public px2dip(F)I
    .locals 1

    .prologue
    .line 532
    invoke-static {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->px2dip(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public refreshAdapterViewSafe(Landroid/widget/BaseAdapter;)V
    .locals 2

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_1

    .line 433
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity$9;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Landroid/widget/BaseAdapter;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public sendMessage(I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public showDialogSafe(I)V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity$5;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;I)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showDialogSafe(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity$6;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showToastSafe(II)V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/anzhi/plugin/loader/PluginBaseActivity$2;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;II)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs showToastSafe(II[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0, p1, p3}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget v2, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v1, v2, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    :goto_0
    return-void

    .line 260
    :cond_0
    new-instance v1, Lcom/anzhi/plugin/loader/PluginBaseActivity$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/anzhi/plugin/loader/PluginBaseActivity$4;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showToastSafe(Ljava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/loader/PluginBaseActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/anzhi/plugin/loader/PluginBaseActivity$3;-><init>(Lcom/anzhi/plugin/loader/PluginBaseActivity;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

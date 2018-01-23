.class public abstract Lcom/anzhi/plugin/framework/PluginActivityProxy;
.super Ljava/lang/Object;
.source "PluginActivityProxy.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/Object;

.field protected d:Landroid/os/Handler;

.field protected e:Landroid/content/res/Resources;

.field protected f:Landroid/view/LayoutInflater;

.field protected g:I

.field protected h:Landroid/widget/FrameLayout;

.field protected i:Ljava/util/Stack;

.field protected j:I

.field protected k:Lcom/anzhi/plugin/framework/PluginPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->j:I

    .line 50
    return-void
.end method

.method private getPluginInvokeInterface()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    .line 118
    :cond_0
    return-object p0
.end method

.method private getRootView()Landroid/view/View;
    .locals 1
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 298
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    .line 299
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    .line 300
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->f:Landroid/view/LayoutInflater;

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setActivity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private setContentView(I)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin setContentView resId= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin setContentView v= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHandler "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private setInvokeInterface(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->c:Ljava/lang/Object;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInvokeInterface "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private setResources(Landroid/content/res/Resources;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 318
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setResources "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 320
    return-void
.end method


# virtual methods
.method public createParceableItem(Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    const/4 v0, 0x1

    invoke-interface {p2, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 260
    const-string v0, "CREATOR"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 263
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    .line 267
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createParceableItems(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v2

    .line 290
    :cond_0
    return-object v0

    .line 284
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->createParceableItem(Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_2

    .line 286
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public dip2px(F)I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 226
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public dismissDialogSafe(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 587
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v0, v1, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy$5;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginPage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finishAllPage(Z)V
    .locals 1

    .prologue
    .line 899
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy$9;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Z)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method

.method protected finishPage(Lcom/anzhi/plugin/framework/PluginPage;)V
    .locals 1

    .prologue
    .line 853
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy$8;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Lcom/anzhi/plugin/framework/PluginPage;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    .line 893
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()Lcom/anzhi/plugin/framework/PluginPage;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    return-object v0
.end method

.method public getDimensionPixel(I)I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMainPageClass(Landroid/content/Intent;)Ljava/lang/Class;
.end method

.method public getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 996
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1013
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 1001
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1003
    :catch_1
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1004
    const/4 v0, 0x0

    goto :goto_0

    .line 1006
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1007
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public final getPageStack()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    return-object v0
.end method

.method public getRaw(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUIThread()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->f:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->e:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 984
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_1

    .line 986
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 987
    invoke-virtual {v0, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 992
    :goto_0
    return-object v0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onActivityResult curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    const-string v1, ",resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResult(IILandroid/content/Intent;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onAttachedToWindow curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onAttachedToWindow()V

    .line 476
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onConfigurationChanged curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    .line 335
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    .line 336
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->h:Landroid/widget/FrameLayout;

    .line 337
    const-string v0, "plugin onCreate"

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->getMainPageClass(Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 339
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onDestroy curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageDestory()V

    .line 411
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)V
    .locals 0
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "plugin onKeyDown curPage= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    iput p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->j:I

    .line 436
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v1, p1, p2}, Lcom/anzhi/plugin/framework/PluginPage;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "plugin onKeyUp curPage= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 445
    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->j:I

    if-ne v2, v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 448
    :cond_1
    iput v4, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->j:I

    .line 449
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v2, p1, p2}, Lcom/anzhi/plugin/framework/PluginPage;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->finishPage()V

    move v0, v1

    .line 455
    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onNewIntent curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    .line 345
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginPage;->onPageNewIntent(Landroid/content/Intent;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onPause curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isInvokeOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPagePause()V

    .line 385
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 387
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onResume curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isInvokeOnResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageResume()V

    .line 376
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/framework/PluginPage;->setInvokeOnResume(Z)V

    .line 378
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onStart curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isInvokeOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageStart()V

    .line 395
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onStop curPage= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isInvokeOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->onPageStop()V

    .line 403
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plugin onWindowFocusChanged hasFocus= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0}, Lcom/anzhi/plugin/framework/PluginPage;->isPageLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->k:Lcom/anzhi/plugin/framework/PluginPage;

    invoke-virtual {v0, p1}, Lcom/anzhi/plugin/framework/PluginPage;->onWindowFocusChanged(Z)V

    .line 483
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 677
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 671
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public px2dip(F)I
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 231
    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public sendMessage(I)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 630
    :cond_0
    return-void
.end method

.method public sendMessage(III)V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    :cond_0
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    :cond_0
    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 641
    :cond_0
    return-void
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setApplicationContext "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public showDialogSafe(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v0, v1, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 620
    :goto_0
    return-void

    .line 613
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy$6;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showToastSafe(II)V
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    :goto_0
    return-void

    .line 500
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy$1;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;II)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs showToastSafe(II[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iget v2, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v1, v2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 578
    :goto_0
    return-void

    .line 571
    :cond_0
    new-instance v1, Lcom/anzhi/plugin/framework/PluginActivityProxy$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy$4;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showToastSafe(Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v0, v1, :cond_0

    .line 511
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 512
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 513
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 515
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    :goto_0
    return-void

    .line 518
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/anzhi/plugin/framework/PluginActivityProxy$2;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showToastSafe(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->showToastSafe(Ljava/lang/CharSequence;I)V

    .line 492
    return-void
.end method

.method public showToastSafe(Ljava/lang/CharSequence;I)V
    .locals 2

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iget v1, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->g:I

    if-ne v0, v1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 552
    :goto_0
    return-void

    .line 545
    :cond_0
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy$3;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startPage(Ljava/lang/Class;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 723
    return-void
.end method

.method public startPage(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 687
    return-void
.end method

.method protected startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V
    .locals 6

    .prologue
    .line 760
    if-nez p1, :cond_1

    .line 761
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->i:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/anzhi/plugin/framework/PluginActivityProxy;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    new-instance v0, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anzhi/plugin/framework/PluginActivityProxy$7;-><init>(Lcom/anzhi/plugin/framework/PluginActivityProxy;Ljava/lang/Class;Landroid/content/Intent;IZ)V

    invoke-virtual {p0, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startPage(Ljava/lang/Class;Landroid/content/Intent;Z)V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 701
    return-void
.end method

.method public startPage(Ljava/lang/Class;Z)V
    .locals 2

    .prologue
    .line 712
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 713
    return-void
.end method

.method public startPageForResult(Ljava/lang/Class;I)V
    .locals 2

    .prologue
    .line 752
    if-lez p2, :cond_0

    .line 753
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 754
    return-void

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPageForResult must request >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPageForResult(Ljava/lang/Class;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 736
    if-lez p3, :cond_0

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anzhi/plugin/framework/PluginActivityProxy;->startPage(Ljava/lang/Class;Landroid/content/Intent;IZ)V

    .line 738
    return-void

    .line 739
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPageForResult must request >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

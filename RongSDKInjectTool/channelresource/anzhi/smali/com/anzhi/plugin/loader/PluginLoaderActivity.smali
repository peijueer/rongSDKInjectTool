.class public abstract Lcom/anzhi/plugin/loader/PluginLoaderActivity;
.super Lcom/anzhi/plugin/loader/PluginBaseActivity;
.source "PluginLoaderActivity.java"

# interfaces
.implements Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Landroid/os/Bundle;

.field private c:Landroid/os/Handler;

.field private d:Landroid/view/View;

.field private e:Lcom/anzhi/plugin/loader/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->c:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;

    invoke-direct {v0, p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;-><init>(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->a:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->b:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 169
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "dispatchKeyEvent"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "dispatchTouchEvent"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/MotionEvent;

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 224
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_1
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public abstract getPluginPkgName()Ljava/lang/String;
.end method

.method public final getPluginRootView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "getRootView"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->d:Landroid/view/View;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 206
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke plugin method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 192
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "onActivityResult"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    .line 193
    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onAttachedToWindow()V

    .line 162
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "onAttachedToWindow"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {p0}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    .line 70
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/anzhi/plugin/loader/PluginManager;->setLoaderListener(Ljava/lang/String;Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;)V

    .line 71
    invoke-super {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->b:Landroid/os/Bundle;

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "onDestroy"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->removeLoaderListener(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 137
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "onKeyDown"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 139
    aput-object p2, v3, v1

    .line 138
    invoke-virtual {p0, v0, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 140
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "onKeyUp"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v1

    .line 151
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p2, v3, v1

    .line 150
    invoke-virtual {p0, v0, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoaderCompleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 242
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "onNewIntent"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Intent;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "onPause"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "onResume"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onStart()V

    .line 89
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "onStart"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Lcom/anzhi/plugin/loader/PluginBaseActivity;->onStop()V

    .line 121
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->e:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-virtual {p0}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->getPluginPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "onStop"

    invoke-virtual {p0, v0, v2, v2}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

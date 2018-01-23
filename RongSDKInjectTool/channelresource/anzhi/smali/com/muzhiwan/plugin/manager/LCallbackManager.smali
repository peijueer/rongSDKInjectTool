.class public Lcom/muzhiwan/plugin/manager/LCallbackManager;
.super Ljava/lang/Object;
.source "LCallbackManager.java"


# static fields
.field private static final pluginsMapForPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muzhiwan/plugin/control/PluginActivityCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActivityCallback(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    .prologue
    .line 19
    sget-object v0, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public static callAllOnBackPressed()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$6;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$6;-><init>(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public static callAllOnCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$1;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/muzhiwan/plugin/manager/LCallbackManager$1;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public static callAllOnDestroy()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$7;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$7;-><init>(Ljava/util/Collection;)V

    .line 97
    return-void
.end method

.method public static callAllOnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, p1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;-><init>(Ljava/util/Collection;ILandroid/view/KeyEvent;)V

    .line 130
    return-void
.end method

.method public static callAllOnPause()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$11;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$11;-><init>(Ljava/util/Collection;)V

    .line 139
    return-void
.end method

.method public static callAllOnRestart()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$5;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$5;-><init>(Ljava/util/Collection;)V

    .line 77
    return-void
.end method

.method public static callAllOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$9;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/muzhiwan/plugin/manager/LCallbackManager$9;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public static callAllOnResume()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$4;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$4;-><init>(Ljava/util/Collection;)V

    .line 66
    return-void
.end method

.method public static callAllOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "out"    # Landroid/os/Bundle;

    .prologue
    .line 100
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$8;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/muzhiwan/plugin/manager/LCallbackManager$8;-><init>(Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public static callAllOnStart()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$2;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$2;-><init>(Ljava/util/Collection;)V

    .line 46
    return-void
.end method

.method public static callAllOnStop()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/muzhiwan/plugin/manager/LCallbackManager$3;

    sget-object v1, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$3;-><init>(Ljava/util/Collection;)V

    .line 56
    return-void
.end method

.method public static removeActivityCallback(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    .prologue
    .line 25
    sget-object v0, Lcom/muzhiwan/plugin/manager/LCallbackManager;->pluginsMapForPath:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

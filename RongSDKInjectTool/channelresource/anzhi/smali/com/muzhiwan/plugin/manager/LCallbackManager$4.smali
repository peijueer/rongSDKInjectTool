.class final Lcom/muzhiwan/plugin/manager/LCallbackManager$4;
.super Lcom/muzhiwan/plugin/EasyFor;
.source "LCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/muzhiwan/plugin/EasyFor",
        "<",
        "Lcom/muzhiwan/plugin/control/PluginActivityCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 60
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/muzhiwan/plugin/control/PluginActivityCallback;>;"
    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/EasyFor;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V
    .locals 0
    .param p1, "element"    # Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    .prologue
    .line 63
    invoke-interface {p1}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnResume()V

    .line 64
    return-void
.end method

.method public bridge synthetic onNewElement(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$4;->onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V

    return-void
.end method

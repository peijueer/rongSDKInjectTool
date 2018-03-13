.class final Lcom/muzhiwan/plugin/manager/LCallbackManager$8;
.super Lcom/muzhiwan/plugin/EasyFor;
.source "LCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnSaveInstanceState(Landroid/os/Bundle;)V
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


# instance fields
.field final synthetic val$out:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/util/Collection;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 100
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/muzhiwan/plugin/control/PluginActivityCallback;>;"
    iput-object p2, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$8;->val$out:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/EasyFor;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V
    .locals 1
    .param p1, "element"    # Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$8;->val$out:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onNewElement(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$8;->onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V

    return-void
.end method

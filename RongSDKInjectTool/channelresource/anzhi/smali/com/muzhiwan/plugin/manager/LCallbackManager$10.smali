.class final Lcom/muzhiwan/plugin/manager/LCallbackManager$10;
.super Lcom/muzhiwan/plugin/EasyFor;
.source "LCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnKeyDown(ILandroid/view/KeyEvent;)V
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
.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Ljava/util/Collection;ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 123
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/muzhiwan/plugin/control/PluginActivityCallback;>;"
    iput p2, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;->val$keyCode:I

    iput-object p3, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/EasyFor;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V
    .locals 2
    .param p1, "element"    # Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    .prologue
    .line 126
    iget v0, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;->val$keyCode:I

    iget-object v1, p0, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;->val$event:Landroid/view/KeyEvent;

    invoke-interface {p1, v0, v1}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnKeyDown(ILandroid/view/KeyEvent;)Z

    .line 128
    return-void
.end method

.method public bridge synthetic onNewElement(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/muzhiwan/plugin/control/PluginActivityCallback;

    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/manager/LCallbackManager$10;->onNewElement(Lcom/muzhiwan/plugin/control/PluginActivityCallback;)V

    return-void
.end method

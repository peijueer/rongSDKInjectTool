.class final Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;
.super Lcom/muzhiwan/plugin/EasyFor;
.source "LPluginBugManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/manager/LPluginBugManager;->callAllBugListener(Lcom/muzhiwan/plugin/api/LPluginBug;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/muzhiwan/plugin/EasyFor",
        "<",
        "Lcom/muzhiwan/plugin/api/LPluginBugListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$error:Lcom/muzhiwan/plugin/api/LPluginBug;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/muzhiwan/plugin/api/LPluginBug;)V
    .locals 0

    .prologue
    .line 35
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/muzhiwan/plugin/api/LPluginBugListener;>;"
    iput-object p2, p0, Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;->val$error:Lcom/muzhiwan/plugin/api/LPluginBug;

    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/EasyFor;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onNewElement(Lcom/muzhiwan/plugin/api/LPluginBugListener;)V
    .locals 1
    .param p1, "element"    # Lcom/muzhiwan/plugin/api/LPluginBugListener;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;->val$error:Lcom/muzhiwan/plugin/api/LPluginBug;

    invoke-interface {p1, v0}, Lcom/muzhiwan/plugin/api/LPluginBugListener;->OnError(Lcom/muzhiwan/plugin/api/LPluginBug;)V

    .line 39
    return-void
.end method

.method public bridge synthetic onNewElement(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/muzhiwan/plugin/api/LPluginBugListener;

    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/manager/LPluginBugManager$1;->onNewElement(Lcom/muzhiwan/plugin/api/LPluginBugListener;)V

    return-void
.end method

.class Lcom/iqiyigame/plugin/internal/GamePluginManager$2;
.super Ljava/lang/Object;
.source "GamePluginManager.java"

# interfaces
.implements Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/internal/GamePluginManager;->stopPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iput-object p2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    iput-object p3, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    # setter for: Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I
    invoke-static {v0, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->access$002(Lcom/iqiyigame/plugin/internal/GamePluginManager;I)I

    .line 308
    return-void
.end method

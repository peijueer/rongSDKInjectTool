.class Lcom/iqiyigame/plugin/internal/GamePluginManager$3;
.super Ljava/lang/Object;
.source "GamePluginManager.java"

# interfaces
.implements Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/internal/GamePluginManager;->bindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iput-object p2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    iput-object p3, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    iput p5, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetch(ILjava/lang/Class;)V
    .locals 4
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
    .line 326
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$dlIntent:Lcom/iqiyigame/plugin/internal/GameIntent;

    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$conn:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->val$flags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    # setter for: Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I
    invoke-static {v0, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->access$002(Lcom/iqiyigame/plugin/internal/GamePluginManager;I)I

    .line 332
    return-void
.end method

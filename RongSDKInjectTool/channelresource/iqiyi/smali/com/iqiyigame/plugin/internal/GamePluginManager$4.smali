.class Lcom/iqiyigame/plugin/internal/GamePluginManager$4;
.super Ljava/lang/Object;
.source "GamePluginManager.java"

# interfaces
.implements Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/internal/GamePluginManager;->unBindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field final synthetic val$conn:Landroid/content/ServiceConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    iput-object p2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->val$conn:Landroid/content/ServiceConnection;

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
    .line 348
    .local p2, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->val$conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;->this$0:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    # setter for: Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I
    invoke-static {v0, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->access$002(Lcom/iqiyigame/plugin/internal/GamePluginManager;I)I

    .line 353
    return-void
.end method

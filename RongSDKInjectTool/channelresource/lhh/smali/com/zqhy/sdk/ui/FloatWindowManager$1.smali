.class Lcom/zqhy/sdk/ui/FloatWindowManager$1;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/FloatWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/FloatWindowManager;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$1;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$1;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    # invokes: Lcom/zqhy/sdk/ui/FloatWindowManager;->freshGray()V
    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->access$000(Lcom/zqhy/sdk/ui/FloatWindowManager;)V

    .line 295
    return-void
.end method

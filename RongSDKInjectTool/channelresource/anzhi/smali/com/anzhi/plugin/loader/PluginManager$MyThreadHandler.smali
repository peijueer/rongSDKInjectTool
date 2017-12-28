.class Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;
.super Ljava/lang/Thread;
.source "PluginManager.java"


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginManager;


# direct methods
.method private constructor <init>(Lcom/anzhi/plugin/loader/PluginManager;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;->a:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anzhi/plugin/loader/PluginManager;B)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;-><init>(Lcom/anzhi/plugin/loader/PluginManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 469
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;->a:Lcom/anzhi/plugin/loader/PluginManager;

    new-instance v1, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler$1;

    invoke-direct {v1, p0}, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler$1;-><init>(Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;)V

    invoke-static {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Lcom/anzhi/plugin/loader/PluginManager;Landroid/os/Handler;)V

    .line 476
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 477
    return-void
.end method

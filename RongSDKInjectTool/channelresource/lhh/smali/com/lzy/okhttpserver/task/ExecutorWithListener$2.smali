.class Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;
.super Ljava/lang/Object;
.source "ExecutorWithListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttpserver/task/ExecutorWithListener;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

.field final synthetic val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/task/ExecutorWithListener;Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;->this$0:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    iput-object p2, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;->val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;->val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;

    invoke-interface {v0}, Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;->onAllTaskEnd()V

    .line 65
    return-void
.end method

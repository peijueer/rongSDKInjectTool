.class Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;
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

.field final synthetic val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/task/ExecutorWithListener;Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;->this$0:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    iput-object p2, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;->val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;

    iput-object p3, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;->val$listener:Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

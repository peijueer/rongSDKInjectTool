.class public Lcom/lzy/okhttpserver/task/PriorityRunnable;
.super Lcom/lzy/okhttpserver/task/PriorityObject;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttpserver/task/PriorityObject",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/lzy/okhttpserver/task/PriorityObject;-><init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityRunnable;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 21
    return-void
.end method

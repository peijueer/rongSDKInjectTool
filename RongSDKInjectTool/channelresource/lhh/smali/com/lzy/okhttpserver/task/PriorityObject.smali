.class public Lcom/lzy/okhttpserver/task/PriorityObject;
.super Ljava/lang/Object;
.source "PriorityObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final priority:Lcom/lzy/okhttpserver/task/Priority;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    sget-object p1, Lcom/lzy/okhttpserver/task/Priority;->DEFAULT:Lcom/lzy/okhttpserver/task/Priority;

    :cond_0
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityObject;->priority:Lcom/lzy/okhttpserver/task/Priority;

    .line 19
    iput-object p2, p0, Lcom/lzy/okhttpserver/task/PriorityObject;->obj:Ljava/lang/Object;

    .line 20
    return-void
.end method

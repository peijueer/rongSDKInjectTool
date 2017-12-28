.class public abstract Lcom/muzhiwan/plugin/EasyFor;
.super Ljava/lang/Object;
.source "EasyFor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/muzhiwan/plugin/EasyFor;, "Lcom/muzhiwan/plugin/EasyFor<TE;>;"
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 22
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/muzhiwan/plugin/EasyFor;->onNewElement(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract onNewElement(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

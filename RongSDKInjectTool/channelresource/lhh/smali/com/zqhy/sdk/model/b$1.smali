.class Lcom/zqhy/sdk/model/b$1;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/model/b;->b()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zqhy/sdk/db/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/model/b;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/model/b;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zqhy/sdk/model/b$1;->a:Lcom/zqhy/sdk/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zqhy/sdk/db/UserBean;Lcom/zqhy/sdk/db/UserBean;)I
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/zqhy/sdk/db/UserBean;

    check-cast p2, Lcom/zqhy/sdk/db/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/zqhy/sdk/model/b$1;->a(Lcom/zqhy/sdk/db/UserBean;Lcom/zqhy/sdk/db/UserBean;)I

    move-result v0

    return v0
.end method

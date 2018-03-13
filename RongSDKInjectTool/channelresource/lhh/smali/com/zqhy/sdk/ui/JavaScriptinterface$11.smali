.class Lcom/zqhy/sdk/ui/JavaScriptinterface$11;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->getSdkUser()Ljava/lang/String;
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
.field final synthetic a:Lcom/zqhy/sdk/ui/JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$11;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zqhy/sdk/db/UserBean;Lcom/zqhy/sdk/db/UserBean;)I
    .locals 4

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zqhy/sdk/db/UserBean;->getAddTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 429
    check-cast p1, Lcom/zqhy/sdk/db/UserBean;

    check-cast p2, Lcom/zqhy/sdk/db/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/zqhy/sdk/ui/JavaScriptinterface$11;->a(Lcom/zqhy/sdk/db/UserBean;Lcom/zqhy/sdk/db/UserBean;)I

    move-result v0

    return v0
.end method

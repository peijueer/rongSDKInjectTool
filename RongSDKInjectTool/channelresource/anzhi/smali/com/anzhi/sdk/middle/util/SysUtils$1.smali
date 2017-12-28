.class Lcom/anzhi/sdk/middle/util/SysUtils$1;
.super Ljava/lang/Object;
.source "SysUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/util/SysUtils;->getJarSignature(Ljava/lang/String;)Ljava/lang/String;
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
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/zip/ZipEntry;

    check-cast p2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0, p1, p2}, Lcom/anzhi/sdk/middle/util/SysUtils$1;->compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;)I
    .locals 2
    .param p1, "obj1"    # Ljava/util/zip/ZipEntry;
    .param p2, "obj2"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 550
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

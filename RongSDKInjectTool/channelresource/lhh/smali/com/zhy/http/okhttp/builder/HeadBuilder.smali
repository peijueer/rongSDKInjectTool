.class public Lcom/zhy/http/okhttp/builder/HeadBuilder;
.super Lcom/zhy/http/okhttp/builder/GetBuilder;
.source "HeadBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/GetBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 15
    new-instance v0, Lcom/zhy/http/okhttp/request/OtherRequest;

    const-string v3, "HEAD"

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/HeadBuilder;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/HeadBuilder;->tag:Ljava/lang/Object;

    iget-object v6, p0, Lcom/zhy/http/okhttp/builder/HeadBuilder;->params:Ljava/util/Map;

    iget-object v7, p0, Lcom/zhy/http/okhttp/builder/HeadBuilder;->headers:Ljava/util/Map;

    iget v8, p0, Lcom/zhy/http/okhttp/builder/HeadBuilder;->id:I

    move-object v2, v1

    invoke-direct/range {v0 .. v8}, Lcom/zhy/http/okhttp/request/OtherRequest;-><init>(Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/request/OtherRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

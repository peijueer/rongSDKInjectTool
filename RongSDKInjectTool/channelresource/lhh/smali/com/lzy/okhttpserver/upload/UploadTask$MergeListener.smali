.class Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;
.super Lcom/lzy/okhttputils/callback/AbsCallback;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/upload/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MergeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/callback/AbsCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private lastRefreshUiTime:J

.field final synthetic this$0:Lcom/lzy/okhttpserver/upload/UploadTask;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/upload/UploadTask;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/AbsCallback;-><init>()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    .line 97
    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method

.method public parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public upProgress(JJFJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    iget-wide v2, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 106
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setUploadLength(J)V

    .line 107
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setTotalLength(J)V

    .line 108
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setProgress(F)V

    .line 109
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 110
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->this$0:Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-static {v0, v4, v4, v4}, Lcom/lzy/okhttpserver/upload/UploadTask;->access$100(Lcom/lzy/okhttpserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;->lastRefreshUiTime:J

    .line 113
    :cond_1
    return-void
.end method

.class public Lcom/anzhi/sdk/middle/net/AdvancedHttpClient$NetworkInfoUnavailableException;
.super Ljava/lang/Exception;
.source "AdvancedHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInfoUnavailableException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5d2bfee510a19e42L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 269
    return-void
.end method

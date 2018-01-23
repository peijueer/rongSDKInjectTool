.class Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeHostnameVerifier;
.super Ljava/lang/Object;
.source "HttpsUtils.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/https/HttpsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnSafeHostnameVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/https/HttpsUtils;


# direct methods
.method private constructor <init>(Lcom/zhy/http/okhttp/https/HttpsUtils;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zhy/http/okhttp/https/HttpsUtils$UnSafeHostnameVerifier;->this$0:Lcom/zhy/http/okhttp/https/HttpsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

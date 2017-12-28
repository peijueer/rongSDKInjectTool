.class final Lcom/ipaynow/wechatpay/plugin/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic J:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/b/c;->J:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/conf/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/c/b/c;->J:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/c/a/b;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/String;)V

    .line 103
    return-void
.end method

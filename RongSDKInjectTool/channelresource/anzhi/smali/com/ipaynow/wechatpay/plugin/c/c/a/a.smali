.class public final Lcom/ipaynow/wechatpay/plugin/c/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public W:I

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:Ljava/util/HashMap;

.field public errorCode:Ljava/lang/String;

.field public respCode:Ljava/lang/String;

.field public respMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    const-string v1, "service_code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nfuncode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 22
    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->W:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nstatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nrespCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nerrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nrespMsg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

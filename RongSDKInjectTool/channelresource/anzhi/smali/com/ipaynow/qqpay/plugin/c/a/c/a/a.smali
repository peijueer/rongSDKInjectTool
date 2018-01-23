.class public final Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public P:I

.field public Q:I

.field public R:Ljava/lang/String;

.field public S:Ljava/util/HashMap;

.field public errorCode:Ljava/lang/String;

.field public respCode:Ljava/lang/String;

.field public respMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->R:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->errorCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->S:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "service_code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nfuncode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nstatus= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nrespCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nerrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nrespMsg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->S:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

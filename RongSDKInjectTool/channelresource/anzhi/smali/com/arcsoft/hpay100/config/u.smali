.class Lcom/arcsoft/hpay100/config/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/config/t;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/t;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/u;->a:Lcom/arcsoft/hpay100/config/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/u;->a:Lcom/arcsoft/hpay100/config/t;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/t;->a(Lcom/arcsoft/hpay100/config/t;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/config/HPaySMS;->mSendIndex:I
    invoke-static {v0}, Lcom/arcsoft/hpay100/config/HPaySMS;->access$0(Lcom/arcsoft/hpay100/config/HPaySMS;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/u;->a:Lcom/arcsoft/hpay100/config/t;

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/t;->a(Lcom/arcsoft/hpay100/config/t;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/u;->a:Lcom/arcsoft/hpay100/config/t;

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/t;->a(Lcom/arcsoft/hpay100/config/t;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/u;->a:Lcom/arcsoft/hpay100/config/t;

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/t;->a(Lcom/arcsoft/hpay100/config/t;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

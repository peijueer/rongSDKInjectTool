.class Lcom/arcsoft/hpay100/HPaySdkAPI$21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private final synthetic val$yzm:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$yzm:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$yzm:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

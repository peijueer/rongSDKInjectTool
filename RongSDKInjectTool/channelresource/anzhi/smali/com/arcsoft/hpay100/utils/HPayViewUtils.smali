.class public Lcom/arcsoft/hpay100/utils/HPayViewUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCustomProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    const-string v0, "layout"

    const-string v1, "hpay_text_progress"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v0, "id"

    const-string v2, "alert_text_show_id"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "style"

    const-string v2, "hpay_progress_dialog"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method public static progressCustomDialog(Landroid/app/Activity;Ljava/lang/String;ZLcom/arcsoft/hpay100/utils/ad;)Landroid/app/Dialog;
    .locals 2

    invoke-static {p0, p1}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->createCustomProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/arcsoft/hpay100/utils/u;

    invoke-direct {v1, p3}, Lcom/arcsoft/hpay100/utils/u;-><init>(Lcom/arcsoft/hpay100/utils/ad;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/arcsoft/hpay100/utils/v;

    invoke-direct {v1, p2, v0}, Lcom/arcsoft/hpay100/utils/v;-><init>(ZLandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v0
.end method

.method public static showCustomConfirmDialog2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/utils/b;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/utils/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/utils/b;->b(Ljava/lang/String;)Lcom/arcsoft/hpay100/utils/b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/arcsoft/hpay100/utils/b;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/utils/b;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/arcsoft/hpay100/utils/z;

    invoke-direct {v3, p4}, Lcom/arcsoft/hpay100/utils/z;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/arcsoft/hpay100/utils/aa;

    invoke-direct {v3, p5}, Lcom/arcsoft/hpay100/utils/aa;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/b;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;

    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/utils/b;->b(I)Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showCustomConfirmDialog3(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/utils/b;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/utils/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/utils/b;->a(Landroid/view/View;)Lcom/arcsoft/hpay100/utils/b;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/ab;

    invoke-direct {v2, p5}, Lcom/arcsoft/hpay100/utils/ab;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p3, v2}, Lcom/arcsoft/hpay100/utils/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/ac;

    invoke-direct {v2, p6}, Lcom/arcsoft/hpay100/utils/ac;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p4, v2}, Lcom/arcsoft/hpay100/utils/b;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;

    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/utils/b;->c(I)Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method

.method public static showDefaultConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/x;

    invoke-direct {v2, p5}, Lcom/arcsoft/hpay100/utils/x;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/y;

    invoke-direct {v2, p6}, Lcom/arcsoft/hpay100/utils/y;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/arcsoft/hpay100/utils/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/arcsoft/hpay100/utils/w;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

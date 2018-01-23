.class public Lcom/arcsoft/hpay100/utils/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/utils/b;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/utils/b;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/arcsoft/hpay100/utils/b;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/arcsoft/hpay100/utils/b;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/arcsoft/hpay100/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->f:Landroid/view/View;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/arcsoft/hpay100/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/arcsoft/hpay100/utils/b;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(I)Lcom/arcsoft/hpay100/utils/HPayCustomDialog;
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "style"

    const-string v3, "hpay_custom_confim_dialog"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_btn_rt_cancel"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->g:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/arcsoft/hpay100/utils/c;

    invoke-direct {v3, p0, v2}, Lcom/arcsoft/hpay100/utils/c;-><init>(Lcom/arcsoft/hpay100/utils/b;Lcom/arcsoft/hpay100/utils/HPayCustomDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_btn_rt_ok"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v4, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/arcsoft/hpay100/utils/d;

    invoke-direct {v3, p0, v2}, Lcom/arcsoft/hpay100/utils/d;-><init>(Lcom/arcsoft/hpay100/utils/b;Lcom/arcsoft/hpay100/utils/HPayCustomDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_tv_rt_title"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_tv_rt_context"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v2, v1}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;->setContentView(Landroid/view/View;)V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_btn_rt_cancel"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_btn_rt_ok"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_tv_rt_title"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_tv_rt_context"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/arcsoft/hpay100/utils/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/arcsoft/hpay100/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/arcsoft/hpay100/utils/b;
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/arcsoft/hpay100/utils/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(I)Lcom/arcsoft/hpay100/utils/HPayCustomDialog;
    .locals 7

    const/16 v6, 0x8

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "style"

    const-string v3, "hpay_custom_confim_dialog"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v0}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_positiveButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->g:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_positiveButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/arcsoft/hpay100/utils/e;

    invoke-direct {v3, p0, v2}, Lcom/arcsoft/hpay100/utils/e;-><init>(Lcom/arcsoft/hpay100/utils/b;Lcom/arcsoft/hpay100/utils/HPayCustomDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_negativeButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->h:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_negativeButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/arcsoft/hpay100/utils/f;

    invoke-direct {v3, p0, v2}, Lcom/arcsoft/hpay100/utils/f;-><init>(Lcom/arcsoft/hpay100/utils/b;Lcom/arcsoft/hpay100/utils/HPayCustomDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_message"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual {v2, v1}, Lcom/arcsoft/hpay100/utils/HPayCustomDialog;->setContentView(Landroid/view/View;)V

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_positiveButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_negativeButton"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/utils/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "id"

    const-string v4, "hpay_content"

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/arcsoft/hpay100/utils/b;->f:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

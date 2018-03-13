.class public Lcom/zqhy/sdk/utils/b$a;
.super Ljava/lang/Object;
.source "AppsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/utils/b$a;->a(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/zqhy/sdk/utils/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0, p3}, Lcom/zqhy/sdk/utils/b$a;->b(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p4}, Lcom/zqhy/sdk/utils/b$a;->c(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p5}, Lcom/zqhy/sdk/utils/b$a;->d(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p6}, Lcom/zqhy/sdk/utils/b$a;->a(I)V

    .line 191
    invoke-virtual {p0, p7}, Lcom/zqhy/sdk/utils/b$a;->a(Z)V

    .line 192
    invoke-virtual {p0, p8}, Lcom/zqhy/sdk/utils/b$a;->b(Z)V

    .line 193
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zqhy/sdk/utils/b$a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/zqhy/sdk/utils/b$a;->f:I

    .line 163
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zqhy/sdk/utils/b$a;->b:Landroid/graphics/drawable/Drawable;

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/zqhy/sdk/utils/b$a;->a:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/zqhy/sdk/utils/b$a;->g:Z

    .line 123
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zqhy/sdk/utils/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zqhy/sdk/utils/b$a;->c:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/zqhy/sdk/utils/b$a;->h:Z

    .line 131
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/zqhy/sdk/utils/b$a;->f:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/zqhy/sdk/utils/b$a;->d:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/zqhy/sdk/utils/b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/zqhy/sdk/utils/b$a;->e:Ljava/lang/String;

    .line 171
    return-void
.end method

.class public Lcom/zqhy/sdk/ui/NumberProgressView;
.super Landroid/view/View;
.source "NumberProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;
    }
.end annotation


# instance fields
.field private A:F

.field private B:Z

.field private C:Z

.field private D:Z

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:F

.field private final o:F

.field private final p:F

.field private final q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Ljava/lang/String;

.field private v:Landroid/graphics/Paint;

.field private w:Landroid/graphics/Paint;

.field private x:Landroid/graphics/Paint;

.field private y:Landroid/graphics/RectF;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0xcc

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v7, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->a:I

    .line 32
    iput v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->b:I

    .line 67
    const-string v0, "%"

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->i:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->j:Ljava/lang/String;

    .line 75
    const-string v0, "#1b1b1b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->k:I

    .line 76
    const/16 v0, 0x42

    const/16 v1, 0x91

    const/16 v2, 0xf1

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->l:I

    .line 77
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->m:I

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    .line 152
    iput-boolean v5, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->B:Z

    .line 154
    iput-boolean v5, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->C:Z

    .line 156
    iput-boolean v5, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    .line 178
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->p:F

    .line 179
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->q:F

    .line 180
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->b(F)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->o:F

    .line 181
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a(F)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->n:F

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v5, [I

    const-string v2, "attr"

    const-string v3, "NumberProgressView"

    invoke-static {p1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, p2, v1, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_reached_color"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    .line 187
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_unreached_color"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    .line 188
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_text_color"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    .line 189
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_text_size"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    .line 191
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_reached_bar_height"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->p:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    .line 192
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_unreached_bar_height"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->q:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    .line 193
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_text_offset"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->A:F

    .line 195
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_text_visibility"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 196
    if-eqz v1, :cond_0

    .line 197
    iput-boolean v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    .line 200
    :cond_0
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_current"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zqhy/sdk/ui/NumberProgressView;->setProgress(I)V

    .line 201
    const-string v1, "styleable"

    const-string v2, "NumberProgressView_progress_max"

    invoke-static {p1, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zqhy/sdk/ui/NumberProgressView;->setMax(I)V

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a()V

    .line 205
    return-void
.end method

.method private a(IZ)I
    .locals 4

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 225
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 226
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v1

    .line 227
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_1

    .line 240
    :goto_1
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    .line 230
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 231
    :goto_2
    add-int/2addr v1, v2

    .line 232
    const/high16 v2, -0x80000000

    if-ne v3, v2, :cond_4

    .line 233
    if-eqz p2, :cond_3

    .line 234
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getSuggestedMinimumHeight()I

    move-result v1

    goto :goto_2

    .line 236
    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->v:Landroid/graphics/Paint;

    .line 265
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->w:Landroid/graphics/Paint;

    .line 268
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    .line 271
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 273
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 277
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 278
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 279
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 280
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 282
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 283
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 284
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 285
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 286
    return-void
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 290
    const-string v0, "0%"

    .line 291
    const-string v1, "100%"

    .line 292
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 295
    const-string v2, "%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->u:Ljava/lang/String;

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->u:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->r:F

    .line 299
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v2

    if-nez v2, :cond_1

    .line 300
    iput-boolean v7, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->C:Z

    .line 301
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->t:F

    .line 315
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->r:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    .line 317
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->A:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 320
    :cond_0
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->r:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->A:F

    add-float/2addr v0, v1

    .line 321
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 322
    iput-boolean v7, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->B:Z

    .line 330
    :goto_1
    return-void

    .line 303
    :cond_1
    iput-boolean v8, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->C:Z

    .line 304
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 305
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 306
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->A:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 307
    iget-object v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->z:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 309
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    .line 310
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    goto/16 :goto_0

    .line 324
    :cond_2
    iput-boolean v8, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->B:Z

    .line 325
    iget-object v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 326
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 327
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    neg-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 328
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->y:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 496
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    return v0
.end method

.method public b(F)F
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 501
    mul-float/2addr v0, p1

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->a:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->b:I

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 214
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    float-to-int v0, v0

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    float-to-int v1, v1

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->c()V

    .line 259
    :goto_0
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->u:Ljava/lang/String;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->s:F

    iget v2, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->t:F

    iget-object v3, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    :cond_0
    return-void

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->b()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/zqhy/sdk/ui/NumberProgressView;->a(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zqhy/sdk/ui/NumberProgressView;->setMeasuredDimension(II)V

    .line 220
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 474
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 475
    check-cast p1, Landroid/os/Bundle;

    .line 476
    const-string v0, "text_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    .line 477
    const-string v0, "text_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    .line 478
    const-string v0, "reached_bar_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    .line 479
    const-string v0, "unreached_bar_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    .line 480
    const-string v0, "reached_bar_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    .line 481
    const-string v0, "unreached_bar_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    .line 482
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->a()V

    .line 483
    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setMax(I)V

    .line 484
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setProgress(I)V

    .line 485
    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setPrefix(Ljava/lang/String;)V

    .line 486
    const-string v0, "suffix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setSuffix(Ljava/lang/String;)V

    .line 487
    const-string v0, "text_visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Visible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/NumberProgressView;->setProgressTextVisibility(Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;)V

    .line 488
    const-string v0, "saved_instance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 492
    :goto_1
    return-void

    .line 487
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Invisible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    goto :goto_0

    .line 491
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 457
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 458
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 460
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 461
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 462
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    return-object v0
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 407
    if-lez p1, :cond_0

    .line 408
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->a:I

    .line 409
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 411
    :cond_0
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->j:Ljava/lang/String;

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    iput-object p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->getMax()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 449
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->b:I

    .line 450
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 452
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2

    .prologue
    .line 381
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    .line 382
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 384
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2

    .prologue
    .line 375
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    .line 376
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->x:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->f:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 377
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 378
    return-void
.end method

.method public setProgressTextVisibility(Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;)V
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;->Visible:Lcom/zqhy/sdk/ui/NumberProgressView$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->D:Z

    .line 506
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 507
    return-void

    .line 505
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReachedBarColor(I)V
    .locals 2

    .prologue
    .line 393
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    .line 394
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->v:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 396
    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0

    .prologue
    .line 399
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->g:F

    .line 400
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    if-nez p1, :cond_0

    .line 415
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->i:Ljava/lang/String;

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iput-object p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnreachedBarColor(I)V
    .locals 2

    .prologue
    .line 387
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    .line 388
    iget-object v0, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->w:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/NumberProgressView;->invalidate()V

    .line 390
    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0

    .prologue
    .line 403
    iput p1, p0, Lcom/zqhy/sdk/ui/NumberProgressView;->h:F

    .line 404
    return-void
.end method

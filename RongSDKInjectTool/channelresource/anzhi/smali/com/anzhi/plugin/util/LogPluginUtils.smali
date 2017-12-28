.class public Lcom/anzhi/plugin/util/LogPluginUtils;
.super Ljava/lang/Object;
.source "LogPluginUtils.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "Anzhi_plugin_base"

    sput-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/anzhi/plugin/util/LogPluginUtils;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 94
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 95
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    :goto_0
    add-int/lit16 v1, v0, 0x1000

    .line 102
    if-lt v1, v2, :cond_1

    .line 103
    sget-object v1, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 106
    :cond_1
    sget-object v3, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 99
    goto :goto_0

    .line 110
    :cond_2
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 150
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 151
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 157
    :goto_0
    add-int/lit16 v1, v0, 0x1000

    .line 158
    if-lt v1, v2, :cond_1

    .line 159
    sget-object v1, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    sget-object v3, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 155
    goto :goto_0

    .line 166
    :cond_2
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 172
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_0
    return-void
.end method

.method public static elapsed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    sget-wide v2, Lcom/anzhi/plugin/util/LogPluginUtils;->c:J

    sub-long v2, v0, v2

    .line 193
    sput-wide v0, Lcom/anzhi/plugin/util/LogPluginUtils;->c:J

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Elapsed|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const-string v0, ""

    .line 212
    :goto_0
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 210
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 51
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 57
    :goto_0
    add-int/lit16 v1, v0, 0x1000

    .line 58
    if-lt v1, v2, :cond_1

    .line 59
    sget-object v1, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    sget-object v3, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 55
    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isDebugable()Z
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    return v0
.end method

.method public static markStart(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/anzhi/plugin/util/LogPluginUtils;->c:J

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Started|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/anzhi/plugin/util/LogPluginUtils;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static setDebugable(Z)V
    .locals 0

    .prologue
    .line 202
    sput-boolean p0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    .line 203
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 72
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 73
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 79
    :goto_0
    add-int/lit16 v1, v0, 0x1000

    .line 80
    if-lt v1, v2, :cond_1

    .line 81
    sget-object v1, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_1
    return-void

    .line 84
    :cond_1
    sget-object v3, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 77
    goto :goto_0

    .line 88
    :cond_2
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 116
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 117
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    :goto_0
    add-int/lit16 v1, v0, 0x1000

    .line 124
    if-lt v1, v2, :cond_1

    .line 125
    sget-object v1, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    sget-object v3, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 121
    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 145
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    sget-boolean v0, Lcom/anzhi/plugin/util/LogPluginUtils;->b:Z

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/anzhi/plugin/util/LogPluginUtils;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_0
    return-void
.end method

.class public Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;
.super Ljava/lang/Object;
.source "RectangleDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/RectangleDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x10

    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v2

    .line 19
    .local v2, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 20
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 21
    const/4 v7, 0x0

    .line 69
    :goto_0
    return-object v7

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 25
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 29
    const/4 v5, 0x0

    .local v5, "x":I
    const/4 v6, 0x0

    .local v6, "y":I
    const/4 v4, 0x0

    .local v4, "width":I
    const/4 v0, 0x0

    .line 31
    .local v0, "height":I
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    .line 32
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 69
    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v5, v6, v4, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v10, :cond_4

    .line 38
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 45
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 46
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    .line 47
    .local v3, "val":I
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 52
    const-string v7, "x"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 53
    move v5, v3

    .line 64
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 65
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 41
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":I
    :cond_4
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 49
    .restart local v1    # "key":Ljava/lang/String;
    :cond_5
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 54
    .restart local v3    # "val":I
    :cond_6
    const-string v7, "y"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 55
    move v6, v3

    goto :goto_2

    .line 56
    :cond_7
    const-string v7, "width"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 57
    move v4, v3

    goto :goto_2

    .line 58
    :cond_8
    const-string v7, "height"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 59
    move v0, v3

    goto :goto_2

    .line 61
    :cond_9
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xc

    return v0
.end method

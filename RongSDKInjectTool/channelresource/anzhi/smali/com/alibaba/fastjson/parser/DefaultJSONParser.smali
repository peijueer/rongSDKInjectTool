.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Lcom/alibaba/fastjson/parser/AbstractJSONParser;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected final input:Ljava/lang/Object;

.field protected final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field private resolveStatus:I

.field private final resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    .line 100
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/math/BigDecimal;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .prologue
    .line 158
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/AbstractJSONParser;-><init>()V

    .line 81
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 89
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 97
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 166
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 167
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 168
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 169
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 171
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 146
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .prologue
    .line 150
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 151
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .prologue
    .line 154
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 155
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 6
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    const/4 v5, 0x0

    .line 1101
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1102
    .local v0, "i":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1104
    .local v2, "newLen":I
    new-array v1, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1105
    .local v1, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1106
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1108
    .end local v1    # "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v2    # "newLen":I
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v3, v0

    .line 1109
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4
    .param p1, "token"    # I

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1217
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1218
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1223
    return-void

    .line 1220
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final accept(II)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "nextExpectToken"    # I

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1227
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1228
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1233
    return-void

    .line 1230
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptType(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 874
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 876
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 877
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 880
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 881
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 882
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 883
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 888
    :cond_1
    return-void

    .line 886
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 1
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    return-void
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 910
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 911
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    move-object v1, p1

    .line 912
    check-cast v1, Ljava/util/List;

    .line 913
    .local v1, "list":Ljava/util/List;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v2

    .line 914
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ListResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 915
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 916
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 918
    .end local v0    # "index":I
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    return-void
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 922
    iget v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 923
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 924
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 925
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V

    .line 926
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 927
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 929
    .end local v0    # "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/MapResolveFieldDeserializer;
    .end local v1    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    .line 1239
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 1241
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1247
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1205
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v0, [C

    check-cast v0, [C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 905
    :goto_1
    return-object v1

    .line 899
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getResolveStatus()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getResolveTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/16 v13, 0x12

    const/16 v12, 0xa

    .line 1125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v3

    .line 1126
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1199
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getBufferPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1128
    :pswitch_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1129
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1130
    .local v5, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1194
    .end local v5    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 1133
    :pswitch_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1134
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 1135
    .local v7, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v7, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v7

    .line 1136
    goto :goto_0

    .line 1138
    .end local v7    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1139
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v5, v0

    .line 1140
    goto :goto_0

    .line 1142
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1143
    .local v4, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v4, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 1145
    .end local v4    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1146
    .local v1, "intValue":Ljava/lang/Number;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v5, v1

    .line 1147
    goto :goto_0

    .line 1149
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1150
    .local v10, "value":Ljava/lang/Number;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v5, v10

    .line 1151
    goto :goto_0

    .line 1153
    .end local v10    # "value":Ljava/lang/Number;
    :pswitch_7
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 1154
    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1156
    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1157
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1160
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1163
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_2
    move-object v5, v6

    .line 1167
    goto :goto_0

    .line 1163
    .restart local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v11

    .line 1169
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v6    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 1172
    :pswitch_9
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1173
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1175
    :pswitch_a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1176
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1178
    :pswitch_b
    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1180
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    if-eq v11, v13, :cond_3

    .line 1181
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1183
    :cond_3
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1185
    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1186
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 1187
    .local v8, "time":J
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1189
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1191
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1193
    .end local v8    # "time":J
    :pswitch_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1196
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unterminated json string, pos "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getBufferPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 516
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 521
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x10

    .line 530
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x15

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x16

    if-ne v6, v7, :cond_1

    .line 531
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 534
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0xe

    if-eq v6, v7, :cond_2

    .line 535
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 538
    :cond_2
    const/4 v1, 0x0

    .line 539
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_3

    .line 540
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    .line 541
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 550
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 551
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 553
    const/4 v2, 0x0

    .line 554
    .local v2, "i":I
    :goto_1
    :try_start_0
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 555
    :goto_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 556
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 601
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v6

    .line 542
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v2    # "i":I
    :cond_3
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_4

    .line 543
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;

    .line 544
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 546
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 547
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 561
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_6

    .line 601
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 604
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 605
    return-void

    .line 565
    :cond_6
    :try_start_2
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, p1, :cond_8

    .line 566
    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 567
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v4    # "val":Ljava/lang/Object;
    :goto_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 596
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 553
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 568
    :cond_8
    const-class v6, Ljava/lang/String;

    if-ne v6, p1, :cond_b

    .line 570
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v10, :cond_9

    .line 571
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 572
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 582
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 574
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 575
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_a

    .line 576
    const/4 v5, 0x0

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 578
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 585
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_c

    .line 586
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 587
    const/4 v4, 0x0

    .line 591
    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_3

    .line 589
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, p0, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_5
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 945
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x10

    .line 949
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v4

    .line 951
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_1

    .line 952
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 955
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    const/16 v9, 0xe

    if-eq v8, v9, :cond_2

    .line 956
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syntax error, expect [, actual "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    invoke-static {v10}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", pos "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 960
    :cond_2
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 962
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 963
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 965
    const/4 v1, 0x0

    .line 966
    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 967
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 968
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1044
    :catchall_0
    move-exception v8

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v8

    .line 974
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1031
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 1035
    :goto_2
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1038
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v10, :cond_4

    .line 1039
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 965
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 976
    :pswitch_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v7

    .line 977
    .local v7, "value":Ljava/lang/Number;
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 980
    .end local v7    # "value":Ljava/lang/Number;
    :pswitch_2
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 981
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .line 985
    .restart local v7    # "value":Ljava/lang/Number;
    :goto_3
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 983
    .end local v7    # "value":Ljava/lang/Number;
    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Number;
    goto :goto_3

    .line 988
    .end local v7    # "value":Ljava/lang/Number;
    :pswitch_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, "stringLiteral":Ljava/lang/String;
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 991
    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 992
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 993
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 994
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 998
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_2

    .line 996
    :cond_6
    move-object v7, v6

    .local v7, "value":Ljava/lang/String;
    goto :goto_4

    .line 1000
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    move-object v7, v6

    .line 1003
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1005
    .end local v6    # "stringLiteral":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1006
    .local v7, "value":Ljava/lang/Boolean;
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1009
    .end local v7    # "value":Ljava/lang/Boolean;
    :pswitch_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1010
    .restart local v7    # "value":Ljava/lang/Boolean;
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 1013
    .end local v7    # "value":Ljava/lang/Boolean;
    :pswitch_6
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1014
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1015
    .local v7, "value":Ljava/lang/Object;
    goto :goto_2

    .line 1017
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_7
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1018
    .local v3, "items":Ljava/util/Collection;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v3, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1019
    move-object v7, v3

    .line 1020
    .local v7, "value":Ljava/util/Collection;
    goto/16 :goto_2

    .line 1022
    .end local v3    # "items":Ljava/util/Collection;
    .end local v7    # "value":Ljava/util/Collection;
    :pswitch_8
    const/4 v7, 0x0

    .line 1023
    .local v7, "value":Ljava/lang/Object;
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 1026
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_9
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1044
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-void

    .line 1029
    :pswitch_a
    :try_start_2
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    const-string v9, "unclosed jsonArray"

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 14
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 608
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 609
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 610
    const/4 v7, 0x0

    .line 718
    :goto_0
    return-object v7

    .line 613
    :cond_0
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_1

    .line 614
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 617
    :cond_1
    array-length v11, p1

    new-array v7, v11, [Ljava/lang/Object;

    .line 618
    .local v7, "list":[Ljava/lang/Object;
    array-length v11, p1

    if-nez v11, :cond_3

    .line 619
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 621
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_2

    .line 622
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 625
    :cond_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 626
    const/4 v11, 0x0

    new-array v7, v11, [Ljava/lang/Object;

    goto :goto_0

    .line 629
    :cond_3
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 631
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, p1

    if-ge v4, v11, :cond_4

    .line 634
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    .line 635
    const/4 v9, 0x0

    .line 636
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 695
    .end local v9    # "value":Ljava/lang/Object;
    :goto_2
    aput-object v9, v7, v4

    .line 697
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_10

    .line 712
    :cond_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_13

    .line 713
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "syntax error"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 638
    :cond_5
    aget-object v8, p1, v4

    .line 639
    .local v8, "type":Ljava/lang/reflect/Type;
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v11, :cond_6

    const-class v11, Ljava/lang/Integer;

    if-ne v8, v11, :cond_8

    .line 640
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 641
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 642
    .local v9, "value":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 644
    .end local v9    # "value":Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 645
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 647
    .end local v9    # "value":Ljava/lang/Object;
    :cond_8
    const-class v11, Ljava/lang/String;

    if-ne v8, v11, :cond_a

    .line 648
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    .line 649
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 650
    .local v9, "value":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 652
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v9

    .line 653
    .local v9, "value":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v9, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 656
    .end local v9    # "value":Ljava/lang/Object;
    :cond_a
    const/4 v5, 0x0

    .line 657
    .local v5, "isArray":Z
    const/4 v1, 0x0

    .line 658
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_b

    .line 659
    instance-of v11, v8, Ljava/lang/Class;

    if-eqz v11, :cond_b

    move-object v0, v8

    .line 660
    check-cast v0, Ljava/lang/Class;

    .line 661
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    .line 662
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 667
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    if-eqz v5, :cond_f

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xe

    if-eq v11, v12, :cond_f

    .line 668
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v10, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 671
    .local v2, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v3

    .line 673
    .local v3, "fastMatch":I
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-eq v11, v12, :cond_d

    .line 675
    :goto_3
    const/4 v11, 0x0

    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 676
    .local v6, "item":Ljava/lang/Object;
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_c

    .line 679
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 680
    :cond_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_e

    .line 688
    .end local v6    # "item":Ljava/lang/Object;
    :cond_d
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v10, v8, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 689
    .restart local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 683
    .end local v9    # "value":Ljava/lang/Object;
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_e
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 690
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v3    # "fastMatch":I
    .end local v6    # "item":Ljava/lang/Object;
    .end local v10    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_f
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 691
    .restart local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v11, 0x0

    invoke-interface {v2, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 701
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "isArray":Z
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_10
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    const/16 v12, 0x10

    if-eq v11, v12, :cond_11

    .line 702
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 705
    :cond_11
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_12

    .line 706
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 631
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 708
    :cond_12
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 716
    :cond_13
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 801
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 802
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 803
    const/4 v2, 0x0

    .line 865
    :goto_0
    return-object v2

    :cond_0
    move-object v9, p1

    .line 806
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 808
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v9, v1

    if-eq v9, v12, :cond_1

    .line 809
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 812
    :cond_1
    aget-object v0, v1, v11

    .line 814
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_2

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 820
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5

    move-object v8, v0

    .line 821
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 824
    .local v8, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    .line 827
    .local v7, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/Object;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 828
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 830
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 832
    :cond_3
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 836
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v7, Ljava/lang/Class;

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v7, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 844
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_5
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_7

    move-object v6, v0

    .line 845
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 846
    .local v6, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 848
    .local v4, "bounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-eq v9, v12, :cond_6

    .line 849
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 852
    :cond_6
    aget-object v3, v4, v11

    .line 853
    .local v3, "boundType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_7

    .line 854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "boundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 860
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "bounds":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v5, v0

    .line 861
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 863
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 868
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 1117
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1121
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 937
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 938
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    .line 939
    return-object v0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 498
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 505
    :goto_0
    return-object v2

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 505
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    throw v1

    .line 508
    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 189
    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, expect {, actual "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 193
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    .line 195
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/16 v19, 0x0

    .line 197
    .local v19, "setContextFlag":Z
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 198
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 199
    .local v3, "ch":C
    sget-object v23, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 200
    :goto_1
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_2

    .line 201
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 202
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 203
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    goto :goto_1

    .line 207
    :cond_2
    const/4 v9, 0x0

    .line 209
    .local v9, "isObjectKey":Z
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v3, v0, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    const/16 v24, 0x22

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 212
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 213
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    .line 214
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v3    # "ch":C
    .end local v9    # "isObjectKey":Z
    .end local v11    # "key":Ljava/lang/String;
    .end local p1    # "object":Ljava/util/Map;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v23

    .line 216
    .restart local v3    # "ch":C
    .restart local v9    # "isObjectKey":Z
    .restart local p1    # "object":Ljava/util/Map;
    :cond_3
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_4

    .line 217
    :try_start_1
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 218
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 219
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .end local p1    # "object":Ljava/util/Map;
    :goto_2
    return-object p1

    .line 221
    .restart local p1    # "object":Ljava/util/Map;
    :cond_4
    const/16 v23, 0x27

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    .line 222
    :try_start_2
    sget-object v23, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 223
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 226
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    const/16 v24, 0x27

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v11

    .line 227
    .restart local v11    # "key":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 228
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 229
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    .line 230
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 232
    .end local v11    # "key":Ljava/lang/String;
    :cond_6
    const/16 v23, 0x1a

    move/from16 v0, v23

    if-ne v3, v0, :cond_7

    .line 233
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 234
    :cond_7
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_8

    .line 235
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 236
    :cond_8
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v3, v0, :cond_9

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v3, v0, :cond_a

    :cond_9
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    .line 237
    :cond_a
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 238
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 239
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 240
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    .line 244
    .local v11, "key":Ljava/lang/Number;
    :goto_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 245
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    .line 246
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 242
    .end local v11    # "key":Ljava/lang/Number;
    :cond_b
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v11

    .restart local v11    # "key":Ljava/lang/Number;
    goto :goto_3

    .line 248
    .end local v11    # "key":Ljava/lang/Number;
    :cond_c
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-eq v3, v0, :cond_d

    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_10

    .line 249
    :cond_d
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    .line 251
    .local v11, "key":Ljava/lang/Object;
    const/4 v9, 0x1

    .line 265
    .end local v11    # "key":Ljava/lang/Object;
    :cond_e
    if-nez v9, :cond_f

    .line 266
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 267
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 270
    :cond_f
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 272
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 274
    sget-object v23, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_19

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    const/16 v24, 0x22

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v21

    .line 276
    .local v21, "typeName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 278
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_12

    .line 279
    sget-object v23, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 253
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "typeName":Ljava/lang/String;
    :cond_10
    sget-object v23, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v23

    if-nez v23, :cond_11

    .line 254
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 257
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 259
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 260
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-eq v3, v0, :cond_e

    .line 261
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "expect \':\' at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", actual "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 283
    .end local v11    # "key":Ljava/lang/String;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "typeName":Ljava/lang/String;
    :cond_12
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 284
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 285
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, "instance":Ljava/lang/Object;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 289
    .local v6, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v6, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 290
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;

    .end local v6    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMJavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    .line 295
    .end local v8    # "instance":Ljava/lang/Object;
    :cond_13
    :goto_4
    if-nez v8, :cond_14

    .line 296
    const-class v23, Ljava/lang/Cloneable;

    move-object/from16 v0, v23

    if-ne v4, v0, :cond_16

    .line 297
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 p1, v8

    goto/16 :goto_2

    .line 291
    .restart local v6    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_15
    :try_start_4
    instance-of v0, v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 292
    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .end local v6    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    .line 299
    .end local v8    # "instance":Ljava/lang/Object;
    :cond_16
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .restart local v8    # "instance":Ljava/lang/Object;
    goto :goto_5

    .line 304
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 305
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "create instance error"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 309
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_17
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-nez v23, :cond_18

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 315
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 316
    .restart local v6    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v6, v0, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object p1

    .line 476
    .end local p1    # "object":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 319
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v21    # "typeName":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_19
    :try_start_6
    const-string v23, "$ref"

    move-object/from16 v0, v23

    if-ne v11, v0, :cond_23

    .line 320
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 321
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 322
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, "ref":Ljava/lang/String;
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 325
    const/16 v17, 0x0

    .line 326
    .local v17, "refValue":Ljava/lang/Object;
    const-string v23, "@"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v23

    if-eqz v23, :cond_20

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v17

    .line 355
    .end local v17    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :goto_6
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_21

    .line 356
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 330
    .restart local v17    # "refValue":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_1a
    const-string v23, ".."

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 331
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15

    .line 332
    .local v15, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1b

    .line 333
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "refValue":Ljava/lang/Object;
    :goto_7
    move-object/from16 p1, v17

    .line 338
    goto :goto_6

    .line 335
    .restart local v17    # "refValue":Ljava/lang/Object;
    :cond_1b
    new-instance v23, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 336
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_7

    .line 338
    .end local v15    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1c
    const-string v23, "$"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 339
    move-object/from16 v18, v5

    .line 340
    .local v18, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_8
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v23

    if-eqz v23, :cond_1d

    .line 341
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v18

    goto :goto_8

    .line 344
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_1e

    .line 345
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/parser/ParseContext;->getObject()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "refValue":Ljava/lang/Object;
    :goto_9
    move-object/from16 p1, v17

    .line 350
    goto :goto_6

    .line 347
    .restart local v17    # "refValue":Ljava/lang/Object;
    :cond_1e
    new-instance v23, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 348
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_9

    .line 351
    .end local v18    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1f
    new-instance v23, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 352
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    :cond_20
    move-object/from16 p1, v17

    goto/16 :goto_6

    .line 358
    .end local v17    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :cond_21
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 362
    .end local v16    # "ref":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_22
    :try_start_7
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "illegal ref, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 366
    :cond_23
    if-nez v19, :cond_24

    .line 367
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 368
    const/16 v19, 0x1

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v23, v0

    if-eqz v23, :cond_24

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v23, v0

    if-nez v23, :cond_24

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 377
    :cond_24
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v3, v0, :cond_28

    .line 378
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 379
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v20

    .line 380
    .local v20, "strValue":Ljava/lang/String;
    move-object/from16 v22, v20

    .line 382
    .local v22, "value":Ljava/lang/String;
    sget-object v23, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 383
    new-instance v10, Lcom/alibaba/fastjson/parser/JSONScanner;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 384
    .local v10, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v23

    if-eqz v23, :cond_25

    .line 385
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    .line 387
    .end local v22    # "value":Ljava/lang/String;
    :cond_25
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 390
    .end local v10    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_27

    .line 391
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .end local v20    # "strValue":Ljava/lang/String;
    :goto_a
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 458
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    .line 459
    const/16 v23, 0x2c

    move/from16 v0, v23

    if-ne v3, v0, :cond_33

    .line 460
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    .line 393
    .restart local v20    # "strValue":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 395
    .end local v20    # "strValue":Ljava/lang/String;
    :cond_28
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v3, v0, :cond_29

    const/16 v23, 0x39

    move/from16 v0, v23

    if-le v3, v0, :cond_2a

    :cond_29
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v3, v0, :cond_2c

    .line 396
    :cond_2a
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 397
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 398
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v22

    .line 403
    .local v22, "value":Ljava/lang/Number;
    :goto_b
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 400
    .end local v22    # "value":Ljava/lang/Number;
    :cond_2b
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberValue()Ljava/lang/Number;

    move-result-object v22

    .restart local v22    # "value":Ljava/lang/Number;
    goto :goto_b

    .line 404
    .end local v22    # "value":Ljava/lang/Number;
    :cond_2c
    const/16 v23, 0x5b

    move/from16 v0, v23

    if-ne v3, v0, :cond_2e

    .line 405
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 406
    new-instance v13, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 407
    .local v13, "list":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 408
    move-object/from16 v22, v13

    .line 409
    .local v22, "value":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 412
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 414
    :cond_2d
    :try_start_8
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 417
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 419
    .end local v13    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v22    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_2e
    const/16 v23, 0x7b

    move/from16 v0, v23

    if-ne v3, v0, :cond_31

    .line 420
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 421
    new-instance v23, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 422
    .local v14, "obj":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-class v24, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2f

    .line 425
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 432
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_30

    .line 433
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 435
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 427
    :cond_2f
    :try_start_9
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 437
    :cond_30
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 440
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 443
    .end local v14    # "obj":Ljava/lang/Object;
    :cond_31
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v22

    .line 445
    .local v22, "value":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_32

    .line 448
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 450
    :cond_32
    :try_start_a
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 453
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, position at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 462
    .end local v22    # "value":Ljava/lang/Object;
    :cond_33
    const/16 v23, 0x7d

    move/from16 v0, v23

    if-ne v3, v0, :cond_34

    .line 463
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 464
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 465
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 467
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_2

    .line 471
    :cond_34
    :try_start_b
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "syntax error, position at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", name "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 723
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldDeserializers(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v9

    .line 725
    .local v9, "setters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xc

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_0

    .line 726
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error, expect {, actual "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 729
    :cond_0
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    .line 733
    .local v0, "args":[Ljava/lang/Object;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    .line 735
    .local v7, "key":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 736
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 737
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 798
    :goto_0
    return-void

    .line 740
    :cond_2
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_3

    .line 741
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 747
    :cond_3
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 748
    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v4, :cond_5

    .line 749
    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 750
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setter not found, class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 753
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 754
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 756
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 757
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 763
    :cond_5
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    .line 764
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v3, v10, v11

    .line 765
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v5, v10, v11

    .line 766
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_6

    .line 767
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 768
    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;

    const/4 v12, 0x0

    invoke-virtual {v11, p0, v5, v12}, Lcom/alibaba/fastjson/parser/deserializer/IntegerDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v10

    .line 783
    :goto_1
    :try_start_0
    invoke-virtual {v8, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0x10

    if-eq v10, v11, :cond_1

    .line 793
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 794
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 769
    :cond_6
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_7

    .line 770
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 771
    const/4 v10, 0x0

    invoke-static {p0}, Lcom/alibaba/fastjson/parser/deserializer/StringDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v10

    goto :goto_1

    .line 772
    :cond_7
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_8

    .line 773
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 774
    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;

    const/4 v12, 0x0

    invoke-virtual {v11, p0, v5, v12}, Lcom/alibaba/fastjson/parser/deserializer/LongDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v10

    goto :goto_1

    .line 776
    :cond_8
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v6

    .line 778
    .local v6, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 779
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v6, p0, v5, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v10

    goto :goto_1

    .line 784
    .end local v6    # "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_0
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set proprety error, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public popContext()V
    .locals 3

    .prologue
    .line 1072
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/ParseContext;->getParentContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1077
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1078
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    goto :goto_0
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 487
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1090
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1097
    :goto_0
    return-object v0

    .line 1094
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1082
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    goto :goto_0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    .line 1065
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1068
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 139
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 135
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0
    .param p1, "resolveStatus"    # I

    .prologue
    .line 895
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 896
    return-void
.end method

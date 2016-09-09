.class public Lnet/fortuna/ical4j/data/FoldingWriter;
.super Ljava/io/FilterWriter;
.source "FoldingWriter.java"


# static fields
.field private static final FOLD_PATTERN:[C


# instance fields
.field private final foldLength:I

.field private lineLength:I

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 63
    const-class v0, Lnet/fortuna/ical4j/data/FoldingWriter;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    .line 75
    const/16 v0, 0x4b

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    .line 76
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v3, [C

    int-to-char v1, p1

    aput-char v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    .line 95
    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lnet/fortuna/ical4j/data/FoldingWriter;->write([CII)V

    .line 137
    return-void
.end method

.method public final write([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 102
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 103
    :goto_0
    if-gt p2, v0, :cond_4

    .line 106
    iget-object v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->log:Lorg/apache/commons/logging/Log;

    aget-char v2, p1, p2

    iget v3, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "char ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "], line length ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    iget v2, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->foldLength:I

    if-lt v1, v2, :cond_1

    .line 114
    sget-object v1, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    sget-object v2, Lnet/fortuna/ical4j/data/FoldingWriter;->FOLD_PATTERN:[C

    array-length v2, v2

    invoke-super {p0, v1, v6, v2}, Ljava/io/FilterWriter;->write([CII)V

    .line 117
    const/4 v1, 0x1

    iput v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    .line 120
    :cond_1
    aget-char v1, p1, p2

    invoke-super {p0, v1}, Ljava/io/FilterWriter;->write(I)V

    .line 122
    aget-char v1, p1, p2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    aget-char v1, p1, p2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 123
    :cond_2
    iput v6, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    .line 103
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 126
    :cond_3
    iget v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/fortuna/ical4j/data/FoldingWriter;->lineLength:I

    goto :goto_1

    .line 129
    :cond_4
    return-void
.end method

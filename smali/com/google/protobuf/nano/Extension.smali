.class public Lcom/google/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final repeated:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    .line 169
    iput-object p2, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 170
    iput p3, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    .line 171
    iput-boolean p4, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    .line 172
    return-void
.end method

.method public static createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/google/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 332
    .line 333
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    .line 334
    :goto_0
    if-ge v1, v2, :cond_1

    .line 335
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 336
    if-eqz v3, :cond_0

    .line 337
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    return v0
.end method

.method computeSerializedSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 326
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 345
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 346
    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_0
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 349
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    .line 352
    :goto_0
    return v0

    .line 351
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 352
    invoke-static {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/nano/Extension;

    if-nez v2, :cond_2

    move v0, v1

    .line 180
    goto :goto_0

    .line 183
    :cond_2
    check-cast p1, Lcom/google/protobuf/nano/Extension;

    .line 184
    iget v2, p0, Lcom/google/protobuf/nano/Extension;->type:I

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    iget v3, p1, Lcom/google/protobuf/nano/Extension;->tag:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    iget-boolean v3, p1, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 192
    .line 193
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->type:I

    add-int/lit16 v0, v0, 0x47b

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    add-int/2addr v0, v1

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 197
    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 313
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 314
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 315
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 316
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method protected writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 289
    :try_start_0
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 290
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/protobuf/nano/Extension;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 292
    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 293
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 294
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/google/protobuf/nano/MessageNano;)V

    .line 296
    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 309
    :goto_0
    return-void

    .line 299
    :pswitch_1
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 300
    invoke-virtual {p2, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/google/protobuf/nano/MessageNano;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method writeTo(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_0
.end method

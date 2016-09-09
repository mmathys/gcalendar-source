.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 101
    return-void
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-object p0

    .line 484
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return-object p0

    .line 469
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 2

    .prologue
    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-object p0

    .line 439
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-object p0

    .line 424
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-object p0

    .line 369
    :cond_1
    if-eq p1, p2, :cond_0

    .line 372
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 373
    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 382
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 386
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    .line 387
    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 388
    :cond_6
    instance-of v0, p1, [I

    if-eqz v0, :cond_7

    .line 389
    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 390
    :cond_7
    instance-of v0, p1, [S

    if-eqz v0, :cond_8

    .line 391
    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 392
    :cond_8
    instance-of v0, p1, [C

    if-eqz v0, :cond_9

    .line 393
    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 394
    :cond_9
    instance-of v0, p1, [B

    if-eqz v0, :cond_a

    .line 395
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 396
    :cond_a
    instance-of v0, p1, [D

    if-eqz v0, :cond_b

    .line 397
    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 398
    :cond_b
    instance-of v0, p1, [F

    if-eqz v0, :cond_c

    .line 399
    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 400
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 401
    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 404
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-object p0

    .line 454
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-object p0

    .line 539
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 709
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-object p0

    .line 712
    :cond_1
    if-eq p1, p2, :cond_0

    .line 715
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 716
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 719
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 720
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 723
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 724
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 678
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-object p0

    .line 681
    :cond_1
    if-eq p1, p2, :cond_0

    .line 684
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 685
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 688
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 689
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 692
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 693
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 740
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-object p0

    .line 743
    :cond_1
    if-eq p1, p2, :cond_0

    .line 746
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 747
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 750
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 751
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 754
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 755
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 771
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-object p0

    .line 774
    :cond_1
    if-eq p1, p2, :cond_0

    .line 777
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 778
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 781
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 782
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 785
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 786
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 616
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object p0

    .line 619
    :cond_1
    if-eq p1, p2, :cond_0

    .line 622
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 623
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 626
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 627
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 630
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 631
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object p0

    .line 588
    :cond_1
    if-eq p1, p2, :cond_0

    .line 591
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 592
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 595
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 596
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 599
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 600
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 554
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-object p0

    .line 557
    :cond_1
    if-eq p1, p2, :cond_0

    .line 560
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 561
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 564
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 565
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 568
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 569
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 647
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-object p0

    .line 650
    :cond_1
    if-eq p1, p2, :cond_0

    .line 653
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 654
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 657
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 661
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 662
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 802
    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-object p0

    .line 805
    :cond_1
    if-eq p1, p2, :cond_0

    .line 808
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 809
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 812
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 813
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    .line 816
    :cond_4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    .line 817
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0

    .prologue
    .line 839
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    .line 840
    return-void
.end method

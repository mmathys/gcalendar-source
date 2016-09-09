.class public Lcom/android/calendarcommon2/ICalendar;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/ICalendar$ParserState;,
        Lcom/android/calendarcommon2/ICalendar$Parameter;,
        Lcom/android/calendarcommon2/ICalendar$Property;,
        Lcom/android/calendarcommon2/ICalendar$Component;,
        Lcom/android/calendarcommon2/ICalendar$FormatException;
    }
.end annotation


# direct methods
.method private static extractParameter(Lcom/android/calendarcommon2/ICalendar$ParserState;)Lcom/android/calendarcommon2/ICalendar$Parameter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v3, -0x1

    .line 543
    iget-object v4, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 544
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 545
    const/4 v2, 0x0

    move v0, v3

    move v1, v3

    .line 548
    :goto_0
    iget v6, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    if-ge v6, v5, :cond_15

    .line 549
    iget v6, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 550
    const/16 v7, 0x3a

    if-ne v6, v7, :cond_3

    .line 551
    if-eqz v2, :cond_2

    .line 552
    if-ne v0, v3, :cond_1

    .line 553
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 556
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 596
    :cond_2
    :goto_2
    return-object v2

    .line 560
    :cond_3
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_8

    .line 561
    if-eqz v2, :cond_6

    .line 562
    if-ne v0, v3, :cond_5

    .line 563
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 566
    :cond_5
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_2

    .line 570
    :cond_6
    new-instance v2, Lcom/android/calendarcommon2/ICalendar$Parameter;

    invoke-direct {v2}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>()V

    .line 571
    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    .line 598
    :cond_7
    :goto_4
    iget v6, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 573
    :cond_8
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_c

    .line 574
    iget v0, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    .line 575
    if-eqz v2, :cond_9

    if-ne v1, v3, :cond_b

    .line 576
    :cond_9
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \';\' before \'=\' in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 579
    :cond_b
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/calendarcommon2/ICalendar$Parameter;->name:Ljava/lang/String;

    goto :goto_4

    .line 580
    :cond_c
    if-ne v6, v8, :cond_7

    .line 581
    if-nez v2, :cond_e

    .line 582
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected parameter before \'\"\' in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 584
    :cond_e
    if-ne v0, v3, :cond_10

    .line 585
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 587
    :cond_10
    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_12

    .line 588
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Parameter value cannot contain a \'\"\' in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 590
    :cond_12
    iget v0, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 591
    if-gez v0, :cond_14

    .line 592
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected closing \'\"\' in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 594
    :cond_14
    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    .line 595
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    goto/16 :goto_2

    .line 600
    :cond_15
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \':\' before end of line in "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static extractValue(Lcom/android/calendarcommon2/ICalendar$ParserState;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 528
    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    .line 529
    :cond_0
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Expected \':\' before end of line in "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    iget v1, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    .line 534
    return-object v1
.end method

.method private static normalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string v1, "\r"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v1, "\n "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    return-object v0
.end method

.method public static parseComponent(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {p1}, Lcom/android/calendarcommon2/ICalendar;->normalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-static {p0, v0}, Lcom/android/calendarcommon2/ICalendar;->parseComponentImpl(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Component;

    move-result-object v0

    return-object v0
.end method

.method private static parseComponentImpl(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Component;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 430
    .line 431
    new-instance v3, Lcom/android/calendarcommon2/ICalendar$ParserState;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/calendarcommon2/ICalendar$ParserState;-><init>(Lcom/android/calendarcommon2/ICalendar$1;)V

    .line 432
    iput v0, v3, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    .line 435
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 439
    array-length v5, v4

    move v2, v0

    move-object v1, p0

    move-object v0, p0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 441
    :try_start_0
    invoke-static {v6, v3, v1}, Lcom/android/calendarcommon2/ICalendar;->parseLine(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$ParserState;Lcom/android/calendarcommon2/ICalendar$Component;)Lcom/android/calendarcommon2/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon2/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 445
    if-nez v0, :cond_0

    move-object v0, v1

    .line 439
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v6

    goto :goto_1

    .line 457
    :cond_1
    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$ParserState;Lcom/android/calendarcommon2/ICalendar$Component;)Lcom/android/calendarcommon2/ICalendar$Component;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/ICalendar$FormatException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3b

    const/4 v1, 0x0

    .line 469
    iput-object p0, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->line:Ljava/lang/String;

    .line 470
    iget-object v0, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 474
    iput v1, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    move v0, v1

    :goto_0
    iget v3, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    if-ge v3, v2, :cond_0

    .line 475
    iget v0, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 476
    if-eq v0, v4, :cond_0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_1

    .line 480
    :cond_0
    iget v2, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 482
    if-nez p2, :cond_2

    .line 483
    const-string v2, "BEGIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 484
    new-instance v0, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v1, "Expected BEGIN"

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    iget v3, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/calendarcommon2/ICalendar$ParserState;->index:I

    goto :goto_0

    .line 489
    :cond_2
    const-string v2, "BEGIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    invoke-static {p1}, Lcom/android/calendarcommon2/ICalendar;->extractValue(Lcom/android/calendarcommon2/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v0, Lcom/android/calendarcommon2/ICalendar$Component;

    invoke-direct {v0, v1, p2}, Lcom/android/calendarcommon2/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$Component;)V

    .line 493
    if-eqz p2, :cond_3

    .line 494
    invoke-virtual {p2, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->addChild(Lcom/android/calendarcommon2/ICalendar$Component;)V

    :cond_3
    move-object p2, v0

    .line 518
    :goto_1
    return-object p2

    .line 497
    :cond_4
    const-string v2, "END"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 499
    invoke-static {p1}, Lcom/android/calendarcommon2/ICalendar;->extractValue(Lcom/android/calendarcommon2/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v0

    .line 500
    if-eqz p2, :cond_5

    .line 501
    invoke-virtual {p2}, Lcom/android/calendarcommon2/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 502
    :cond_5
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$FormatException;

    const-string v2, "Unexpected END "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Lcom/android/calendarcommon2/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 504
    :cond_7
    invoke-virtual {p2}, Lcom/android/calendarcommon2/ICalendar$Component;->getParent()Lcom/android/calendarcommon2/ICalendar$Component;

    move-result-object p2

    goto :goto_1

    .line 506
    :cond_8
    new-instance v2, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v2, v1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 509
    if-ne v0, v4, :cond_9

    .line 511
    :goto_3
    invoke-static {p1}, Lcom/android/calendarcommon2/ICalendar;->extractParameter(Lcom/android/calendarcommon2/ICalendar$ParserState;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 512
    invoke-virtual {v2, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    goto :goto_3

    .line 515
    :cond_9
    invoke-static {p1}, Lcom/android/calendarcommon2/ICalendar;->extractValue(Lcom/android/calendarcommon2/ICalendar$ParserState;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2, v2}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    goto :goto_1
.end method

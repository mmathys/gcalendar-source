.class public Lnet/fortuna/ical4j/model/DateList;
.super Ljava/lang/Object;
.source "DateList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J = -0x335c1acae6d30dc5L


# instance fields
.field private final dates:Ljava/util/List;

.field private timeZone:Lnet/fortuna/ical4j/model/TimeZone;

.field private final type:Lnet/fortuna/ical4j/model/parameter/Value;

.field private utc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p2, p3}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 135
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v1, v2}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/TimeZone;)V

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateList;-><init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    if-nez p1, :cond_0

    .line 102
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 106
    :goto_0
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    .line 108
    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 225
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Date;

    if-nez v0, :cond_1

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument not a "

    const-class v0, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final add(Lnet/fortuna/ical4j/model/Date;)Z
    .locals 2

    .prologue
    .line 201
    instance-of v0, p1, Lnet/fortuna/ical4j/model/DateTime;

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->isUtc()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 203
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 205
    :cond_1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 206
    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getType()Lnet/fortuna/ical4j/model/parameter/Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 211
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    .line 212
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    .line 394
    :cond_0
    check-cast p1, Lnet/fortuna/ical4j/model/DateList;

    .line 395
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 396
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 397
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    iget-boolean v2, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 398
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    return-object v0
.end method

.method public final getType()Lnet/fortuna/ical4j/model/parameter/Value;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 403
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 404
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 405
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 406
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 403
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isUtc()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto :goto_0

    .line 291
    :cond_0
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 293
    return-void
.end method

.method public final setUtc(Z)V
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE:Lnet/fortuna/ical4j/model/parameter/Value;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateList;->type:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/DateTime;->setUtc(Z)V

    goto :goto_0

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->timeZone:Lnet/fortuna/ical4j/model/TimeZone;

    .line 276
    iput-boolean p1, p0, Lnet/fortuna/ical4j/model/DateList;->utc:Z

    .line 277
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateList;->dates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

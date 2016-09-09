.class Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;
.super Ljava/lang/Object;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormatCache"
.end annotation


# instance fields
.field private final templateFormat:Ljava/text/DateFormat;

.field private final threadMap:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/text/DateFormat;)V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->threadMap:Ljava/util/Map;

    .line 513
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->templateFormat:Ljava/text/DateFormat;

    .line 514
    return-void
.end method

.method synthetic constructor <init>(Ljava/text/DateFormat;Lnet/fortuna/ical4j/model/DateTime$1;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;-><init>(Ljava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->threadMap:Ljava/util/Map;

    .line 518
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 517
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 519
    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->templateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 521
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateTime$DateFormatCache;->threadMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    return-object v0
.end method

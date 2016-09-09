.class public Lcom/google/android/calendar/event/data/TimelyFlairInitializer;
.super Ljava/lang/Object;
.source "TimelyFlairInitializer.java"

# interfaces
.implements Lcom/android/calendar/event/data/FlairInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->setContext(Landroid/content/Context;)V

    .line 15
    return-void
.end method

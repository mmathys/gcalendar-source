.class public abstract Lcom/google/android/calendar/event/segment/TimelyInfoSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "TimelyInfoSegment.java"


# instance fields
.field private final mRobotoMedium:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyInfoSegment;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 34
    return-void
.end method


# virtual methods
.method public final getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyInfoSegment;->mRobotoMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

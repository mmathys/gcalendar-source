.class public Lcom/google/android/calendar/ical/ICalContract$Events;
.super Ljava/lang/Object;
.source "ICalContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.google.android.calendar.ical/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalContract$Events;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

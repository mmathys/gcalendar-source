.class public Lcom/google/android/syncadapters/calendar/timely/TimelyContract$Alerts;
.super Ljava/lang/Object;
.source "TimelyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "alerts"

    .line 407
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$Alerts;->CONTENT_URI:Landroid/net/Uri;

    .line 406
    return-void
.end method

.class public Lcom/android/calendar/event/CustomEvent;
.super Ljava/lang/Object;
.source "CustomEvent.java"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mIntent:Landroid/content/Intent;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mLogo:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/calendar/event/CustomEvent;->mIntent:Landroid/content/Intent;

    .line 41
    iput-object p2, p0, Lcom/android/calendar/event/CustomEvent;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 42
    iput-object p3, p0, Lcom/android/calendar/event/CustomEvent;->mLabel:Ljava/lang/CharSequence;

    .line 43
    iput-object p4, p0, Lcom/android/calendar/event/CustomEvent;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 44
    return-void
.end method

.method public static extractInformation(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/CustomEvent;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 51
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 52
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 59
    if-eqz v3, :cond_0

    .line 65
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 66
    if-eqz v4, :cond_0

    .line 73
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 75
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

    invoke-direct {v6, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "customAppUri"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "beginTime"

    iget-wide v8, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-virtual {v6, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    invoke-static {v6}, Lcom/android/calendar/Utils;->prepareIntentToOpenLink(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {v3, v6, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    .line 92
    :cond_3
    new-instance v0, Lcom/android/calendar/event/CustomEvent;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/calendar/event/CustomEvent;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

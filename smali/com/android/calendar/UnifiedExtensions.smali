.class public interface abstract Lcom/android/calendar/UnifiedExtensions;
.super Ljava/lang/Object;
.source "UnifiedExtensions.java"


# virtual methods
.method public abstract configureStrictMode()V
.end method

.method public abstract getIcalActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSettingsActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/calendar/timely/settings/CalendarSettingsActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWhatsNew()Lcom/android/calendar/WhatsNewFactory;
.end method

.method public abstract handleMagicSearch(Ljava/lang/String;Landroid/app/Activity;)Z
.end method

.method public abstract onApplicationStart(Landroid/content/Context;)V
.end method

.method public abstract showPreDialog(Landroid/app/Activity;)V
.end method

.method public abstract showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/ContactInfo;)V
.end method

.method public abstract showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V
.end method

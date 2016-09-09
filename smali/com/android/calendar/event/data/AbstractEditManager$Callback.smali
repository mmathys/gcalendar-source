.class public interface abstract Lcom/android/calendar/event/data/AbstractEditManager$Callback;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V
.end method

.method public abstract onConvertEventToReminder(Landroid/text/SpannedString;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSaveInitiated(Z)V
.end method

.method public abstract onSaveInterrupted()V
.end method

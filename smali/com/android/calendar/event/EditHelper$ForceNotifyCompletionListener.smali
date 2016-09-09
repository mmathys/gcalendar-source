.class public Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;
.super Ljava/lang/Object;
.source "EditHelper.java"

# interfaces
.implements Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForceNotifyCompletionListener"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;->mUri:Landroid/net/Uri;

    .line 189
    return-void
.end method


# virtual methods
.method public onOperationCompleted(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 194
    return-void
.end method

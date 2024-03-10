---
export_on_save:
  html: true
---
```plantuml
@startuml
left to right direction
skinparam linetype polyline






namespace app {
    class App << (S,Aquamarine) >> {
        - ch *Channels

        - dbHealthCheckKey() string
        - checkLdapUserPasswordAndAllCriteria(rctx request.CTX, ldapId *string, password string, mfaToken string) (*model.User, *model.AppError)
        - authenticateUser(rctx request.CTX, user *model.User, password string, mfaToken string) (*model.User, *model.AppError)
        - checkIfRespondedToday(createdAt int64, channelId string, userId string) (bool, error)
        - getOrCreateBot(rctx request.CTX, botDef *model.Bot) (*model.Bot, *model.AppError)
        - disableUserBots(c request.CTX, userID string) *model.AppError
        - notifySysadminsBotOwnerDeactivated(c request.CTX, userID string) *model.AppError
        - getDisableBotSysadminMessage(user *model.User, userBots model.BotList) string
        - postJoinMessageForDefaultChannel(c request.CTX, user *model.User, requestor *model.User, channel *model.Channel) *model.AppError
        - getOrCreateDirectChannelWithUser(c request.CTX, user *model.User, otherUser *model.User) (*model.Channel, *model.AppError)
        - handleCreationEvent(c request.CTX, userID string, otherUserID string, channel *model.Channel) 
        - createDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        - createDirectChannelWithUser(c request.CTX, user *model.User, otherUser *model.User, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        - createGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        - postChannelPrivacyMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - sendUpdateChannelMemberNotifyPropsEvent(member *model.ChannelMember) error
        - updateChannelMember(c request.CTX, member *model.ChannelMember) (*model.ChannelMember, *model.AppError)
        - addUserToChannel(c request.CTX, user *model.User, channel *model.Channel) (*model.ChannelMember, *model.AppError)
        - postJoinChannelMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - postJoinTeamMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - postLeaveChannelMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - postAddToTeamMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        - postRemoveFromChannelMessage(c request.CTX, removerUserId string, removedUser *model.User, channel *model.Channel) *model.AppError
        - removeUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        - markChannelAsUnreadFromPostCRTUnsupported(c request.CTX, postID string, userID string) (*model.ChannelUnreadAt, *model.AppError)
        - sendWebSocketPostUnreadEvent(c request.CTX, channelUnread *model.ChannelUnreadAt, postID string, withMsgCountRoot bool) 
        - postChannelMoveMessage(c request.CTX, user *model.User, channel *model.Channel, previousTeam *model.Team) *model.AppError
        - setChannelsMuted(c request.CTX, channelIDs []string, userID string, muted bool) ([]*model.ChannelMember, *model.AppError)
        - forEachChannelMember(c request.CTX, channelID string, f <font color=blue>func</font>(model.ChannelMember) error) error
        - getDirectChannel(c request.CTX, userID string, otherUserID string) (*model.Channel, *model.AppError)
        - setSidebarCategoriesForConvertedGroupMessage(c request.CTX, gmConversionRequest *model.GroupMessageConversionRequestBody, channelUsers []*model.User) *model.AppError
        - validateForConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, originalChannel *model.Channel, gmConversionRequest *model.GroupMessageConversionRequestBody) *model.AppError
        - postMessageForConvertGroupMessageToChannel(c request.CTX, channelID string, convertedByUserId string, channelUsers []*model.User) *model.AppError
        - createInitialSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        - muteChannelsForUpdatedCategories(c request.CTX, userID string, updatedCategories []*model.SidebarCategoryWithChannels, originalCategories []*model.SidebarCategoryWithChannels) 
        - getSysAdminsEmailRecipients() ([]*model.User, *model.AppError)
        - tryExecuteBuiltInCommand(c request.CTX, args *model.CommandArgs, trigger string, message string) (*model.Command, *model.CommandResponse)
        - tryExecuteCustomCommand(c request.CTX, args *model.CommandArgs, trigger string, message string) (*model.Command, *model.CommandResponse, *model.AppError)
        - createCommand(cmd *model.Command) (*model.Command, *model.AppError)
        - getSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.AutocompleteData, inputParsed string, inputToBeParsed string, roleID string) []model.AutocompleteSuggestion
        - parseArguments(c request.CTX, commandArgs *model.CommandArgs, args []*model.AutocompleteArg, parsed string, toBeParsed string) (bool, string, string, []model.AutocompleteSuggestion)
        - parseArgument(c request.CTX, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) (bool, string, string, []model.AutocompleteSuggestion)
        - getDynamicListArgument(c request.CTX, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) (bool, string, string, []model.AutocompleteSuggestion)
        - getBuiltinDynamicListArgument(c request.CTX, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) ([]model.AutocompleteListItem, error)
        - prepareDraftWithFileInfos(rctx request.CTX, userID string, draft *model.Draft) *model.Draft
        - getFileInfosForDraft(rctx request.CTX, draft *model.Draft) ([]*model.FileInfo, *model.AppError)
        - uploadEmojiImage(c request.CTX, id string, filename string, file io.ReadSeeker) *model.AppError
        - deleteEmojiImage(rctx request.CTX, id string) 
        - deleteReactionsForEmoji(rctx request.CTX, emojiName string) 
        - confirmEmojiExists(c request.CTX, emojiName string) *model.AppError
        - getSessionExpiredPushMessage(session *model.Session) string
        - exportWriteLine(w io.Writer, line *imports.LineImportData) *model.AppError
        - exportVersion(writer io.Writer) *model.AppError
        - exportAllTeams(ctx request.CTX, job *model.Job, writer io.Writer) (<font color=blue>map</font>[string]bool, *model.AppError)
        - exportAllChannels(ctx request.CTX, job *model.Job, writer io.Writer, teamNames <font color=blue>map</font>[string]bool, withArchived bool) *model.AppError
        - exportAllUsers(ctx request.CTX, job *model.Job, writer io.Writer, includeArchivedChannels bool, includeProfilePictures bool) ([]string, *model.AppError)
        - buildUserTeamAndChannelMemberships(c request.CTX, userID string, includeArchivedChannels bool) (*[]imports.UserTeamImportData, *model.AppError)
        - buildUserChannelMemberships(c request.CTX, userID string, teamID string, includeArchivedChannels bool) (*[]imports.UserChannelImportData, *model.AppError)
        - buildUserNotifyProps(notifyProps model.StringMap) *imports.UserNotifyPropsImportData
        - exportAllPosts(ctx request.CTX, job *model.Job, writer io.Writer, withAttachments bool, includeArchivedChannels bool) ([]imports.AttachmentImportData, *model.AppError)
        - buildPostReplies(ctx request.CTX, postID string, withAttachments bool) ([]imports.ReplyImportData, []imports.AttachmentImportData, *model.AppError)
        - buildPostAttachments(postID string) ([]imports.AttachmentImportData, *model.AppError)
        - exportCustomEmoji(c request.CTX, job *model.Job, writer io.Writer, outPath string, exportDir string, exportFiles bool) ([]string, *model.AppError)
        - copyEmojiImages(emojiId string, emojiImagePath string, pathToDir string) error
        - exportAllDirectChannels(ctx request.CTX, job *model.Job, writer io.Writer, includeArchivedChannels bool) *model.AppError
        - buildFavoritedByList(channelID string) ([]string, *model.AppError)
        - exportAllDirectPosts(ctx request.CTX, job *model.Job, writer io.Writer, withAttachments bool, includeArchivedChannels bool) ([]imports.AttachmentImportData, *model.AppError)
        - exportFile(outPath string, filePath string, zipWr *zip.Writer) *model.AppError
        - getInfoForFilename(rctx request.CTX, post *model.Post, teamID string, channelID string, userID string, oldId string, filename string) *model.FileInfo
        - findTeamIdForFilename(rctx request.CTX, post *model.Post, id string, filename string) string
        - generateThumbnailImage(rctx request.CTX, img image.Image, imgType string, thumbnailPath string) 
        - generatePreviewImage(rctx request.CTX, img image.Image, imgType string, previewPath string) 
        - generateMiniPreview(rctx request.CTX, fi *model.FileInfo) 
        - generateMiniPreviewForInfos(rctx request.CTX, fileInfos []*model.FileInfo) 
        - getFileInfoIgnoreCloudLimit(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        - getFileIgnoreCloudLimit(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        - getCloudFilesSizeLimit() (int64, *model.AppError)
        - removeInaccessibleContentFromFilesSlice(files []*model.FileInfo) (int64, *model.AppError)
        - filterInaccessibleFiles(fileList *model.FileInfoList, options filterFileOptions) *model.AppError
        - isInaccessibleFile(file *model.FileInfo) (int64, *model.AppError)
        - getFilteredAccessibleFiles(files []*model.FileInfo, options filterFileOptions) ([]*model.FileInfo, int64, *model.AppError)
        - isUniqueToUsernames(val string) *model.AppError
        - publishGroupMemberEvent(eventName model.WebsocketEventType, groupMember *model.GroupMember) *model.AppError
        - bulkImportWorker(c request.CTX, dryRun bool, wg *sync.WaitGroup, lines <font color=blue>chan</font> imports.LineImportWorkerData, errors <font color=blue>chan</font> imports.LineImportWorkerError) 
        - bulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        - importLine(c request.CTX, line imports.LineImportData, dryRun bool) *model.AppError
        - importScheme(rctx request.CTX, data *imports.SchemeImportData, dryRun bool) *model.AppError
        - importRole(rctx request.CTX, data *imports.RoleImportData, dryRun bool, isSchemeRole bool) *model.AppError
        - importTeam(rctx request.CTX, data *imports.TeamImportData, dryRun bool) *model.AppError
        - importChannel(rctx request.CTX, data *imports.ChannelImportData, dryRun bool) *model.AppError
        - importUser(rctx request.CTX, data *imports.UserImportData, dryRun bool) *model.AppError
        - importUserTeams(rctx request.CTX, user *model.User, data *[]imports.UserTeamImportData) *model.AppError
        - importUserChannels(rctx request.CTX, user *model.User, team *model.Team, data *[]imports.UserChannelImportData) *model.AppError
        - importReaction(data *imports.ReactionImportData, post *model.Post) *model.AppError
        - importReplies(rctx request.CTX, data []imports.ReplyImportData, post *model.Post, teamID string) *model.AppError
        - importAttachment(rctx request.CTX, data *imports.AttachmentImportData, post *model.Post, teamID string) (*model.FileInfo, *model.AppError)
        - getUsersByUsernames(usernames []string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        - getTeamsByNames(names []string) (<font color=blue>map</font>[string]*model.Team, *model.AppError)
        - getChannelsByNames(names []string, teamID string) (<font color=blue>map</font>[string]*model.Channel, *model.AppError)
        - getChannelsForPosts(teams <font color=blue>map</font>[string]*model.Team, data []*imports.PostImportData) (<font color=blue>map</font>[string]<font color=blue>map</font>[string]*model.Channel, *model.AppError)
        - importMultiplePostLines(rctx request.CTX, lines []imports.LineImportWorkerData, dryRun bool) (int, *model.AppError)
        - uploadAttachments(rctx request.CTX, attachments *[]imports.AttachmentImportData, post *model.Post, teamID string) <font color=blue>map</font>[string]bool
        - updateFileInfoWithPostId(rctx request.CTX, post *model.Post) 
        - importDirectChannel(rctx request.CTX, data *imports.DirectChannelImportData, dryRun bool) *model.AppError
        - importMultipleDirectPostLines(rctx request.CTX, lines []imports.LineImportWorkerData, dryRun bool) (int, *model.AppError)
        - importEmoji(rctx request.CTX, data *imports.EmojiImportData, dryRun bool) *model.AppError
        - doPluginRequest(c request.CTX, method string, rawURL string, values url.Values, body []byte) (*http.Response, *model.AppError)
        - writeLdapFile(filename string, fileData *multipart.FileHeader) *model.AppError
        - removeLdapFile(filename string) *model.AppError
        - shouldShowUserLimits() bool
        - canSendPushNotifications() bool
        - getExplicitMentionsAndKeywords(c request.CTX, post *model.Post, channel *model.Channel, profileMap <font color=blue>map</font>[string]*model.User, groups <font color=blue>map</font>[string]*model.Group, channelMemberNotifyPropsMap <font color=blue>map</font>[string]model.StringMap, parentPostList *model.PostList) (*MentionResults, MentionKeywords)
        - userAllowsEmail(c request.CTX, user *model.User, channelMemberNotificationProps model.StringMap, post *model.Post) bool
        - sendNoUsersNotifiedByGroupInChannel(c request.CTX, sender *model.User, post *model.Post, channel *model.Channel, group *model.Group) 
        - sendOutOfChannelMentions(c request.CTX, sender *model.User, post *model.Post, channel *model.Channel, potentialMentions []string) (bool, error)
        - filterOutOfChannelMentions(c request.CTX, sender *model.User, post *model.Post, channel *model.Channel, potentialMentions []string) ([]*model.User, []*model.User, error)
        - allowChannelMentions(c request.CTX, post *model.Post, numProfiles int) bool
        - allowGroupMentions(c request.CTX, post *model.Post) bool
        - getGroupsAllowedForReferenceInChannel(channel *model.Channel, team *model.Team) (<font color=blue>map</font>[string]*model.Group, error)
        - getMentionKeywordsInChannel(profiles <font color=blue>map</font>[string]*model.User, allowChannelMentions bool, channelMemberNotifyPropsMap <font color=blue>map</font>[string]model.StringMap, groups <font color=blue>map</font>[string]*model.Group) MentionKeywords
        - insertGroupMentions(senderID string, group *model.Group, channel *model.Channel, profileMap <font color=blue>map</font>[string]*model.User, mentions *MentionResults) (bool, *model.AppError)
        - sendNotificationEmail(c request.CTX, notification *PostNotification, user *model.User, team *model.Team, senderProfileImage []byte) error
        - getNotificationEmailBody(c request.CTX, recipient *model.User, post *model.Post, channel *model.Channel, channelName string, senderName string, teamName string, landingURL string, emailNotificationContentsType string, useMilitaryTime bool, translateFunc i18n.TranslateFunc, senderPhoto string) (string, error)
        - sendPushNotificationSync(c request.CTX, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) *model.AppError
        - sendPushNotificationToAllSessions(msg *model.PushNotification, userID string, skipSessionId string) *model.AppError
        - sendPushNotification(notification *PostNotification, user *model.User, explicitMention bool, channelWideMention bool, replyToThreadType string) 
        - getPushNotificationMessage(contentsConfig string, postMessage string, explicitMention bool, channelWideMention bool, hasFiles bool, senderName string, channelType model.ChannelType, replyToThreadType string, userLocale i18n.TranslateFunc) string
        - getUserBadgeCount(userID string, isCRTEnabled bool) (int, *model.AppError)
        - clearPushNotificationSync(c request.CTX, currentSessionId string, userID string, channelID string, rootID string) *model.AppError
        - clearPushNotification(currentSessionId string, userID string, channelID string, rootID string) 
        - updateMobileAppBadgeSync(c request.CTX, userID string) *model.AppError
        - rawSendToPushProxy(msg *model.PushNotification) (model.PushResponse, error)
        - sendToPushProxy(msg *model.PushNotification, session *model.Session) error
        - getMobileAppSessions(userID string) ([]*model.Session, *model.AppError)
        - buildIdLoadedPushNotificationMessage(c request.CTX, channel *model.Channel, post *model.Post, user *model.User) *model.PushNotification
        - buildFullPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) *model.PushNotification
        - pluginInstallAdminNotifyPost(c request.CTX, userBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData, pluginBasedPluginData <font color=blue>map</font>[string][]*model.NotifyAdminData, systemBot *model.Bot, admin *model.User) 
        - upgradePlanAdminNotifyPost(c request.CTX, workspaceName string, userBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData, featureBasedData <font color=blue>map</font>[model.MattermostFeature][]*model.NotifyAdminData, systemBot *model.Bot, admin *model.User, trial bool) 
        - groupNotifyAdminByUser(data []*model.NotifyAdminData) (<font color=blue>map</font>[string][]*model.NotifyAdminData, <font color=blue>map</font>[string][]*model.NotifyAdminData)
        - groupNotifyAdminByPaidFeature(data []*model.NotifyAdminData) <font color=blue>map</font>[model.MattermostFeature][]*model.NotifyAdminData
        - groupNotifyAdminByPlugin(data []*model.NotifyAdminData) <font color=blue>map</font>[string][]*model.NotifyAdminData
        - newSession(c request.CTX, app *model.OAuthApp, user *model.User) (*model.Session, *model.AppError)
        - newSessionUpdateToken(c request.CTX, app *model.OAuthApp, accessData *model.AccessData, user *model.User) (*model.AccessResponse, *model.AppError)
        - getSSOProvider(service string) (einterfaces.OAuthProvider, *model.AppError)
        - markAdminOnboardingComplete(c request.CTX) *model.AppError
        - parseOpenGraphMetadata(requestURL string, body io.Reader, contentType string) *opengraph.OpenGraph
        - getEmojisPermissionsSplitMigration() (permissionsMap, error)
        - getWebhooksPermissionsSplitMigration() (permissionsMap, error)
        - getListJoinPublicPrivateTeamsPermissionsMigration() (permissionsMap, error)
        - removePermanentDeleteUserMigration() (permissionsMap, error)
        - getAddBotPermissionsMigration() (permissionsMap, error)
        - applyChannelManageDeleteToChannelUser() (permissionsMap, error)
        - removeChannelManageDeleteFromTeamUser() (permissionsMap, error)
        - getViewMembersPermissionMigration() (permissionsMap, error)
        - getAddManageGuestsPermissionsMigration() (permissionsMap, error)
        - channelModerationPermissionsMigration() (permissionsMap, error)
        - getAddUseGroupMentionsPermissionMigration() (permissionsMap, error)
        - getAddSystemConsolePermissionsMigration() (permissionsMap, error)
        - getAddConvertChannelPermissionsMigration() (permissionsMap, error)
        - getSystemRolesPermissionsMigration() (permissionsMap, error)
        - getAddManageSharedChannelsPermissionsMigration() (permissionsMap, error)
        - getBillingPermissionsMigration() (permissionsMap, error)
        - getAddManageSecureConnectionsPermissionsMigration() (permissionsMap, error)
        - getAddDownloadComplianceExportResult() (permissionsMap, error)
        - getAddExperimentalSubsectionPermissions() (permissionsMap, error)
        - getAddIntegrationsSubsectionPermissions() (permissionsMap, error)
        - getAddSiteSubsectionPermissions() (permissionsMap, error)
        - getAddComplianceSubsectionPermissions() (permissionsMap, error)
        - getAddEnvironmentSubsectionPermissions() (permissionsMap, error)
        - getAddAboutSubsectionPermissions() (permissionsMap, error)
        - getAddReportingSubsectionPermissions() (permissionsMap, error)
        - getAddAuthenticationSubsectionPermissions() (permissionsMap, error)
        - getAddTestEmailAncillaryPermission() (permissionsMap, error)
        - getAddCustomUserGroupsPermissions() (permissionsMap, error)
        - getAddCustomUserGroupsPermissionRestore() (permissionsMap, error)
        - getAddPlaybooksPermissions() (permissionsMap, error)
        - getPlaybooksPermissionsAddManageRoles() (permissionsMap, error)
        - getProductsBoardsPermissions() (permissionsMap, error)
        - getAddChannelReadContentPermissions() (permissionsMap, error)
        - getAddIPFilterPermissionsMigration() (permissionsMap, error)
        - getAddOutgoingOAuthConnectionsPermissions() (permissionsMap, error)
        - getRemotePlugins() (<font color=blue>map</font>[string]*model.MarketplacePlugin, *model.AppError)
        - mergePrepackagedPlugins(remoteMarketplacePlugins <font color=blue>map</font>[string]*model.MarketplacePlugin) *model.AppError
        - mergeLocalPlugins(remoteMarketplacePlugins <font color=blue>map</font>[string]*model.MarketplacePlugin) *model.AppError
        - getBaseMarketplaceFilter() *model.MarketplacePluginFilter
        - tryExecutePluginCommand(c request.CTX, args *model.CommandArgs) (*model.Command, *model.CommandResponse, *model.AppError)
        - deduplicateCreatePost(post *model.Post) (*model.Post, *model.AppError)
        - addPostPreviewProp(rctx request.CTX, post *model.Post) (*model.Post, error)
        - attachFilesToPost(rctx request.CTX, post *model.Post) *model.AppError
        - handlePostEvents(c request.CTX, post *model.Post, user *model.User, channel *model.Channel, triggerWebhooks bool, parentPostList *model.PostList, setOnline bool) error
        - publishWebsocketEventForPermalinkPost(c request.CTX, post *model.Post, message *model.WebSocketEvent) (bool, *model.AppError)
        - deleteDraftsAssociatedWithPost(c request.CTX, channel *model.Channel, post *model.Post) 
        - deleteFlaggedPosts(c request.CTX, postID string) 
        - deletePostFiles(c request.CTX, postID string) 
        - parseAndFetchChannelIdByNameFromInFilter(c request.CTX, channelName string, userID string, teamID string, includeDeleted bool) (*model.Channel, error)
        - searchPostsInTeam(teamID string, userID string, paramsList []*model.SearchParams, modifierFun <font color=blue>func</font>(*model.SearchParams) ) (*model.PostList, *model.AppError)
        - convertChannelNamesToChannelIds(c request.CTX, channels []string, userID string, teamID string, includeDeletedChannels bool) []string
        - convertUserNameToUserIds(c request.CTX, usernames []string) []string
        - getCloudMessagesHistoryLimit() (int64, *model.AppError)
        - getFileInfosForPostIgnoreCloudLimit(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        - countThreadMentions(c request.CTX, user *model.User, post *model.Post, teamID string, timestamp int64) (int64, *model.AppError)
        - countMentionsFromPost(c request.CTX, user *model.User, post *model.Post) (int, int, int, *model.AppError)
        - applyPostsWillBeConsumedHook(posts <font color=blue>map</font>[string]*model.Post) 
        - applyPostWillBeConsumedHook(post **model.Post) 
        - sendAcknowledgementEvent(event model.WebsocketEventType, acknowledgement *model.PostAcknowledgement, post *model.Post) 
        - filterInaccessiblePosts(postList *model.PostList, options filterPostOptions) *model.AppError
        - isInaccessiblePost(post *model.Post) (int64, *model.AppError)
        - getFilteredAccessiblePosts(posts []*model.Post, options filterPostOptions) ([]*model.Post, int64, *model.AppError)
        - getEmbedsAndImages(c request.CTX, post *model.Post, isNewPost bool) *model.Post
        - sanitizePostMetadataForUserAndChannel(c request.CTX, post *model.Post, previewedPost *model.PreviewPost, previewedChannel *model.Channel, userID string) *model.Post
        - getFileMetadataForPost(rctx request.CTX, post *model.Post, fromMaster bool) ([]*model.FileInfo, int64, *model.AppError)
        - getEmojisAndReactionsForPost(c request.CTX, post *model.Post) ([]*model.Emoji, []*model.Reaction, *model.AppError)
        - getEmbedForPost(c request.CTX, post *model.Post, firstLink string, isNewPost bool) (*model.PostEmbed, error)
        - getImagesForPost(c request.CTX, post *model.Post, imageURLs []string, isNewPost bool) <font color=blue>map</font>[string]*model.PostImage
        - getCustomEmojisForPost(c request.CTX, post *model.Post, reactions []*model.Reaction) ([]*model.Emoji, *model.AppError)
        - isLinkAllowedForPreview(link string) bool
        - getFirstLinkAndImages(str string) (string, []string)
        - getImagesInMessageAttachments(post *model.Post) []string
        - containsPermalink(post *model.Post) bool
        - getLinkMetadata(c request.CTX, requestURL string, timestamp int64, isNewPost bool, previewedPostPropVal string) (*opengraph.OpenGraph, *model.PostImage, *model.Permalink, error)
        - getLinkMetadataFromDatabase(requestURL string, timestamp int64) (*opengraph.OpenGraph, *model.PostImage, bool)
        - saveLinkMetadataToDatabase(requestURL string, timestamp int64, og *opengraph.OpenGraph, image *model.PostImage) 
        - parseLinkMetadata(requestURL string, body io.Reader, contentType string) (*opengraph.OpenGraph, *model.PostImage, error)
        - forEachPersistentNotificationPost(posts []*model.Post, fn <font color=blue>func</font>(*model.Post, *model.Channel, *model.Team, *MentionResults, model.UserMap, <font color=blue>map</font>[string]<font color=blue>map</font>[string]model.StringMap) error) error
        - persistentNotificationsAuxiliaryData(channelsMap <font color=blue>map</font>[string]*model.Channel, teamsMap <font color=blue>map</font>[string]*model.Team) (<font color=blue>map</font>[string]<font color=blue>map</font>[string]*model.Group, <font color=blue>map</font>[string]model.UserMap, <font color=blue>map</font>[string]MentionKeywords, <font color=blue>map</font>[string]<font color=blue>map</font>[string]model.StringMap, error)
        - channelTeamMapsForPosts(posts []*model.Post) (<font color=blue>map</font>[string]*model.Channel, <font color=blue>map</font>[string]*model.Team, error)
        - sendPersistentNotifications(post *model.Post, channel *model.Channel, team *model.Team, mentions *MentionResults, profileMap model.UserMap, channelNotifyProps <font color=blue>map</font>[string]<font color=blue>map</font>[string]model.StringMap) error
        - persistentNotificationsAllowedForStatus(userID string) bool
        - sendReactionEvent(event model.WebsocketEventType, reaction *model.Reaction, post *model.Post) 
        - saveCSVChunk(prefix string, count int, reportData []model.ReportableObject) *model.AppError
        - compileCSVChunks(prefix string, numberOfChunks int, headers []string) *model.AppError
        - cleanupCSVChunks(prefix string, numberOfChunks int) *model.AppError
        - mergeChannelHigherScopedPermissions(roles []*model.Role) *model.AppError
        - sendUpdatedRoleEvent(role *model.Role) *model.AppError
        - writeSamlFile(filename string, fileData *multipart.FileHeader) *model.AppError
        - removeSamlFile(filename string) *model.AppError
        - createSessionForUserAccessToken(c request.CTX, tokenString string) (*model.Session, *model.AppError)
        - getSharedChannelsService() (SharedChannelServiceIFace, error)
        - checkChannelNotShared(c request.CTX, channelId string) error
        - checkChannelIsShared(channelId string) error
        - onUserProfileChange(userID string) 
        - addRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        - generateSupportPacketYaml(c request.CTX) (*model.FileData, error)
        - createPluginsFile(_ request.CTX) (*model.FileData, error)
        - getNotificationsLog(_ request.CTX) (*model.FileData, error)
        - getMattermostLog(_ request.CTX) (*model.FileData, error)
        - createSanitizedConfigFile(_ request.CTX) (*model.FileData, error)
        - createCPUProfile(_ request.CTX) (*model.FileData, error)
        - createHeapProfile( request.CTX) (*model.FileData, error)
        - createGoroutineProfile(_ request.CTX) (*model.FileData, error)
        - createDefaultChannelMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        - createDefaultTeamMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        - deleteGroupConstrainedTeamMemberships(c request.CTX, teamID *string) error
        - deleteGroupConstrainedChannelMemberships(c request.CTX, channelID *string) error
        - sendTeamEvent(team *model.Team, event model.WebsocketEventType) *model.AppError
        - sendUpdatedMemberRoleEvent(userID string, member *model.TeamMember) *model.AppError
        - postProcessTeamMemberLeave(c request.CTX, teamMember *model.TeamMember, requestorId string) *model.AppError
        - postLeaveTeamMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - postRemoveFromTeamMessage(c request.CTX, user *model.User, channel *model.Channel) *model.AppError
        - prepareInviteNewUsersToTeam(teamID string, senderId string, channelIds []string) (*model.User, *model.Team, []*model.Channel, *model.AppError)
        - prepareInviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) (*model.User, *model.Team, []*model.Channel, *model.AppError)
        - getMarketplacePlugins() ([]string, error)
        - getTrueUpProfile() (*model.TrueUpReviewProfile, error)
        - genFileInfoFromReader(name string, file io.ReadSeeker, size int64) (*model.FileInfo, error)
        - runPluginsHook(c request.CTX, info *model.FileInfo, file io.Reader) *model.AppError
        - createUserOrGuest(c request.CTX, user *model.User, guest bool) (*model.User, *model.AppError)
        - sanitizeProfiles(users []*model.User, asAdmin bool) []*model.User
        - userDeactivated(c request.CTX, userID string) *model.AppError
        - invalidateUserChannelMembersCaches(c request.CTX, userID string) *model.AppError
        - sendUpdatedUserEvent(user model.User) 
        - isUniqueToGroupNames(val string) *model.AppError
        - updateUserNotifyProps(userID string, props <font color=blue>map</font>[string]string) *model.AppError
        - resetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string, nowMilli int64) *model.AppError
        - filterNonGroupUsers(userIDs []string, groupUsers []*model.User) ([]string, error)
        - userBelongsToChannels(userID string, channelIDs []string) (bool, *model.AppError)
        - invalidateUserCacheAndPublish(rctx request.CTX, userID string) 
        - invalidateCacheForChannelMembers(channelID string) 
        - invalidateCacheForChannelMembersNotifyProps(channelID string) 
        - invalidateCacheForChannelPosts(channelID string) 
        - invalidateCacheForUserTeams(userID string) 
        - handleWebhookEvents(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        - doOutgoingWebhookRequest(url string, body io.Reader, contentType string, accessToken *model.OutgoingOAuthConnectionToken) (*model.OutgoingWebhookResponse, error)

        + QueryLogs(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + GetLogs(rctx request.CTX, page int, perPage int) ([]string, *model.AppError)
        + GetLogsSkipSend(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo
        + RecycleDatabaseConnection(rctx request.CTX) 
        + TestSiteURL(rctx request.CTX, siteURL string) *model.AppError
        + TestEmail(rctx request.CTX, userID string, cfg *model.Config) *model.AppError
        + GetLatestVersion(rctx request.CTX, latestVersionUrl string) (*model.GithubReleaseInfo, *model.AppError)
        + ClearLatestVersionCache(rctx request.CTX) 
        + GetAnalytics(name string, teamID string) (model.AnalyticsRows, *model.AppError)
        + GetRecentlyActiveUsersForTeam(teamID string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetRecentlyActiveUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetNewUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + TelemetryId() string
        + Channels() *Channels
        + Srv() *Server
        + Log() *mlog.Logger
        + NotificationsLog() *mlog.Logger
        + AccountMigration() einterfaces.AccountMigrationInterface
        + Cluster() einterfaces.ClusterInterface
        + Compliance() einterfaces.ComplianceInterface
        + DataRetention() einterfaces.DataRetentionInterface
        + SearchEngine() *searchengine.Broker
        + Ldap() einterfaces.LdapInterface
        + MessageExport() einterfaces.MessageExportInterface
        + Metrics() einterfaces.MetricsInterface
        + Notification() einterfaces.NotificationInterface
        + Saml() einterfaces.SamlInterface
        + Cloud() einterfaces.CloudInterface
        + IPFiltering() einterfaces.IPFilteringInterface
        + OutgoingOAuthConnections() einterfaces.OutgoingOAuthConnectionInterface
        + HTTPService() httpservice.HTTPService
        + ImageProxy() *imageproxy.ImageProxy
        + Timezones() *timezones.Timezones
        + License() *model.License
        + DBHealthCheckWrite() error
        + DBHealthCheckDelete() error
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + SetChannels(ch *Channels) 
        + SetServer(srv *Server) 
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + GetAudits(rctx request.CTX, userID string, limit int) (model.Audits, *model.AppError)
        + GetAuditsPage(rctx request.CTX, userID string, page int, perPage int) (model.Audits, *model.AppError)
        + LogAuditRec(rctx request.CTX, rec *audit.Record, err error) 
        + LogAuditRecWithLevel(rctx request.CTX, rec *audit.Record, level mlog.Level, err error) 
        + MakeAuditRecord(rctx request.CTX, event string, initialStatus string) *audit.Record
        + IsPasswordValid(rctx request.CTX, password string) *model.AppError
        + CheckPasswordAndAllCriteria(rctx request.CTX, user *model.User, password string, mfaToken string) *model.AppError
        + DoubleCheckPassword(rctx request.CTX, user *model.User, password string) *model.AppError
        + CheckUserAllAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserPreflightAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserPostflightAuthenticationCriteria(rctx request.CTX, user *model.User) *model.AppError
        + CheckUserMfa(rctx request.CTX, user *model.User, token string) *model.AppError
        + SessionHasPermissionTo(session model.Session, permission *model.Permission) bool
        + SessionHasPermissionToAny(session model.Session, permissions []*model.Permission) bool
        + SessionHasPermissionToTeam(session model.Session, teamID string, permission *model.Permission) bool
        + SessionHasPermissionToTeams(c request.CTX, session model.Session, teamIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToChannel(c request.CTX, session model.Session, channelID string, permission *model.Permission) bool
        + SessionHasPermissionToChannels(c request.CTX, session model.Session, channelIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToGroup(session model.Session, groupID string, permission *model.Permission) bool
        + SessionHasPermissionToChannelByPost(session model.Session, postID string, permission *model.Permission) bool
        + SessionHasPermissionToCategory(c request.CTX, session model.Session, userID string, teamID string, categoryId string) bool
        + SessionHasPermissionToUser(session model.Session, userID string) bool
        + SessionHasPermissionToUserOrBot(session model.Session, userID string) bool
        + HasPermissionTo(askingUserId string, permission *model.Permission) bool
        + HasPermissionToTeam(c request.CTX, askingUserId string, teamID string, permission *model.Permission) bool
        + HasPermissionToChannel(c request.CTX, askingUserId string, channelID string, permission *model.Permission) bool
        + HasPermissionToChannelByPost(c request.CTX, askingUserId string, postID string, permission *model.Permission) bool
        + HasPermissionToUser(askingUserId string, userID string) bool
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + SessionHasPermissionToManageBot(session model.Session, botUserId string) *model.AppError
        + HasPermissionToReadChannel(c request.CTX, userID string, channel *model.Channel) bool
        + SendAutoResponseIfNecessary(rctx request.CTX, channel *model.Channel, sender *model.User, post *model.Post) (bool, *model.AppError)
        + SendAutoResponse(rctx request.CTX, channel *model.Channel, receiver *model.User, post *model.Post) (bool, *model.AppError)
        + SetAutoResponderStatus(rctx request.CTX, user *model.User, oldNotifyProps model.StringMap) 
        + DisableAutoResponder(rctx request.CTX, userID string, asAdmin bool) *model.AppError
        + EnsureBot(rctx request.CTX, pluginID string, bot *model.Bot) (string, error)
        + CreateBot(c request.CTX, bot *model.Bot) (*model.Bot, *model.AppError)
        + GetSystemBot(rctx request.CTX) (*model.Bot, *model.AppError)
        + PatchBot(rctx request.CTX, botUserId string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + GetBot(botUserId string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) (model.BotList, *model.AppError)
        + UpdateBotActive(c request.CTX, botUserId string, active bool) (*model.Bot, *model.AppError)
        + PermanentDeleteBot(botUserId string) *model.AppError
        + UpdateBotOwner(botUserId string, newOwnerId string) (*model.Bot, *model.AppError)
        + ConvertUserToBot(user *model.User) (*model.Bot, *model.AppError)
        + SaveBrandImage(rctx request.CTX, imageData *multipart.FileHeader) *model.AppError
        + GetBrandImage(rctx request.CTX) ([]byte, *model.AppError)
        + DeleteBrandImage(rctx request.CTX) *model.AppError
        + DefaultChannelNames(c request.CTX) []string
        + JoinDefaultChannels(c request.CTX, teamID string, user *model.User, shouldBeAdmin bool, userRequestorId string) *model.AppError
        + CreateChannelWithUser(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + RenameChannel(c request.CTX, channel *model.Channel, newChannelName string, newDisplayName string) (*model.Channel, *model.AppError)
        + CreateChannel(c request.CTX, channel *model.Channel, addMember bool) (*model.Channel, *model.AppError)
        + GetOrCreateDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        + CreateGroupChannel(c request.CTX, userIDs []string, creatorId string) (*model.Channel, *model.AppError)
        + GetGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        + UpdateChannel(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + CreateChannelScheme(c request.CTX, channel *model.Channel) (*model.Scheme, *model.AppError)
        + DeleteChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelPrivacy(c request.CTX, oldChannel *model.Channel, user *model.User) (*model.Channel, *model.AppError)
        + RestoreChannel(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + PatchChannel(c request.CTX, channel *model.Channel, patch *model.ChannelPatch, userID string) (*model.Channel, *model.AppError)
        + GetSchemeRolesForChannel(c request.CTX, channelID string) (string, string, string, *model.AppError)
        + GetTeamSchemeChannelRoles(c request.CTX, teamID string) (string, string, string, *model.AppError)
        + GetChannelModerationsForChannel(c request.CTX, channel *model.Channel) ([]*model.ChannelModeration, *model.AppError)
        + PatchChannelModerationsForChannel(c request.CTX, channel *model.Channel, channelModerationsPatch []*model.ChannelModerationPatch) ([]*model.ChannelModeration, *model.AppError)
        + UpdateChannelMemberRoles(c request.CTX, channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberSchemeRoles(c request.CTX, channelID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberNotifyProps(c request.CTX, data <font color=blue>map</font>[string]string, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + PatchChannelMembersNotifyProps(c request.CTX, members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, *model.AppError)
        + DeleteChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + AddUserToChannel(c request.CTX, user *model.User, channel *model.Channel, skipTeamMemberIntegrityCheck bool) (*model.ChannelMember, *model.AppError)
        + AddChannelMember(c request.CTX, userID string, channel *model.Channel, opts ChannelMemberOpts) (*model.ChannelMember, *model.AppError)
        + AddDirectChannels(c request.CTX, teamID string, user *model.User) *model.AppError
        + PostUpdateChannelHeaderMessage(c request.CTX, userID string, channel *model.Channel, oldChannelHeader string, newChannelHeader string) *model.AppError
        + PostUpdateChannelPurposeMessage(c request.CTX, userID string, channel *model.Channel, oldChannelPurpose string, newChannelPurpose string) *model.AppError
        + PostUpdateChannelDisplayNameMessage(c request.CTX, userID string, channel *model.Channel, oldChannelDisplayName string, newChannelDisplayName string) *model.AppError
        + GetChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        + GetChannels(c request.CTX, channelIDs []string) ([]*model.Channel, *model.AppError)
        + GetChannelsMemberCount(c request.CTX, channelIDs []string) (<font color=blue>map</font>[string]int64, *model.AppError)
        + GetChannelByName(c request.CTX, channelName string, teamID string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsByNames(c request.CTX, channelNames []string, teamID string) ([]*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(c request.CTX, channelName string, teamName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        + GetChannelsForUser(c request.CTX, userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, *model.AppError)
        + GetAllChannels(c request.CTX, page int, perPage int, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, *model.AppError)
        + GetAllChannelsCount(c request.CTX, opts model.ChannelSearchOpts) (int64, *model.AppError)
        + GetDeletedChannels(c request.CTX, teamID string, offset int, limit int, userID string) (model.ChannelList, *model.AppError)
        + GetChannelsUserNotIn(c request.CTX, teamID string, userID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetPublicChannelsByIdsForTeam(c request.CTX, teamID string, channelIDs []string) (model.ChannelList, *model.AppError)
        + GetPublicChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetPrivateChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMembersPage(c request.CTX, channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersTimezones(c request.CTX, channelID string) ([]string, *model.AppError)
        + GetChannelMembersByIds(c request.CTX, channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(c request.CTX, teamID string, userID string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUserWithPagination(c request.CTX, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + GetChannelMembersWithTeamDataForUserWithPagination(c request.CTX, userID string, page int, perPage int) (model.ChannelMembersWithTeamData, *model.AppError)
        + GetChannelMemberCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelFileCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelGuestCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelPinnedPostCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelCounts(c request.CTX, teamID string, userID string) (*model.ChannelCounts, *model.AppError)
        + GetChannelUnread(c request.CTX, channelID string, userID string) (*model.ChannelUnread, *model.AppError)
        + JoinChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + LeaveChannel(c request.CTX, channelID string, userID string) *model.AppError
        + PostAddToChannelMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        + RemoveUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        + GetNumberOfChannelsOnTeam(c request.CTX, teamID string) (int, *model.AppError)
        + SetActiveChannel(c request.CTX, userID string, channelID string) *model.AppError
        + IsCRTEnabledForUser(c request.CTX, userID string) bool
        + ValidateUserPermissionsOnChannels(c request.CTX, userId string, channelIds []string) []string
        + MarkChannelAsUnreadFromPost(c request.CTX, postID string, userID string, collapsedThreadsSupported bool) (*model.ChannelUnreadAt, *model.AppError)
        + AutocompleteChannels(c request.CTX, userID string, term string) (model.ChannelListWithTeamData, *model.AppError)
        + AutocompleteChannelsForTeam(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteChannelsForSearch(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchAllChannels(c request.CTX, term string, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, *model.AppError)
        + SearchChannels(c request.CTX, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchArchivedChannels(c request.CTX, teamID string, term string, userID string) (model.ChannelList, *model.AppError)
        + SearchChannelsForUser(c request.CTX, userID string, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchGroupChannels(c request.CTX, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsUserNotIn(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + MarkChannelsAsViewed(c request.CTX, channelIDs []string, userID string, currentSessionId string, collapsedThreadsSupported bool, isCRTEnabled bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + ViewChannel(c request.CTX, view *model.ChannelView, userID string, currentSessionId string, collapsedThreadsSupported bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + PermanentDeleteChannel(c request.CTX, channel *model.Channel) *model.AppError
        + RemoveAllDeactivatedMembersFromChannel(c request.CTX, channel *model.Channel) *model.AppError
        + MoveChannel(c request.CTX, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        + RemoveUsersFromChannelNotMemberOfTeam(c request.CTX, remover *model.User, channel *model.Channel, team *model.Team) *model.AppError
        + GetPinnedPosts(c request.CTX, channelID string) (*model.PostList, *model.AppError)
        + ToggleMuteChannel(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + FillInChannelProps(c request.CTX, channel *model.Channel) *model.AppError
        + FillInChannelsProps(c request.CTX, channelList model.ChannelList) *model.AppError
        + ClearChannelMembersCache(c request.CTX, channelID string) error
        + GetMemberCountsByGroup(rctx request.CTX, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, *model.AppError)
        + GetGroupMessageMembersCommonTeams(c request.CTX, channelID string) ([]*model.Team, *model.AppError)
        + ConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, gmConversionRequest *model.GroupMessageConversionRequestBody) (*model.Channel, *model.AppError)
        + GetSidebarCategoriesForTeamForUser(c request.CTX, userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategoryOrder(c request.CTX, userID string, teamID string) ([]string, *model.AppError)
        + GetSidebarCategory(c request.CTX, categoryId string) (*model.SidebarCategoryWithChannels, *model.AppError)
        + CreateSidebarCategory(c request.CTX, userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + UpdateSidebarCategoryOrder(c request.CTX, userID string, teamID string, categoryOrder []string) *model.AppError
        + UpdateSidebarCategories(c request.CTX, userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + DeleteSidebarCategory(c request.CTX, userID string, teamID string, categoryId string) *model.AppError
        + SendPaymentFailedEmail(failedPayment *model.FailedPayment) *model.AppError
        + SendDelinquencyEmail(emailToSend model.DelinquencyEmail) *model.AppError
        + AdjustInProductLimits(limits *model.ProductLimits, subscription *model.Subscription) *model.AppError
        + SendUpgradeConfirmationEmail(isYearly bool) *model.AppError
        + SendNoCardPaymentFailedEmail() *model.AppError
        + SendSubscriptionHistoryEvent(userID string) (*model.SubscriptionHistory, error)
        + DoSubscriptionRenewalCheck() 
        + IsLeader() bool
        + GetClusterId() string
        + CreateCommandPost(c request.CTX, post *model.Post, teamID string, response *model.CommandResponse, skipSlackParsing bool) (*model.Post, *model.AppError)
        + ListAutocompleteCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListTeamCommands(teamID string) ([]*model.Command, *model.AppError)
        + ListAllCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ExecuteCommand(c request.CTX, args *model.CommandArgs) (*model.CommandResponse, *model.AppError)
        + MentionsToTeamMembers(c request.CTX, message string, teamID string) model.UserMentionMap
        + MentionsToPublicChannels(c request.CTX, message string, teamID string) model.ChannelMentionMap
        + DoCommandRequest(rctx request.CTX, cmd *model.Command, p url.Values) (*model.Command, *model.CommandResponse, *model.AppError)
        + HandleCommandResponse(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.CommandResponse, *model.AppError)
        + HandleCommandResponsePost(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.Post, *model.AppError)
        + CreateCommand(cmd *model.Command) (*model.Command, *model.AppError)
        + GetCommand(commandID string) (*model.Command, *model.AppError)
        + UpdateCommand(oldCmd *model.Command, updatedCmd *model.Command) (*model.Command, *model.AppError)
        + MoveCommand(team *model.Team, command *model.Command) *model.AppError
        + RegenCommandToken(cmd *model.Command) (*model.Command, *model.AppError)
        + DeleteCommand(commandID string) *model.AppError
        + GetSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.Command, roleID string) []model.AutocompleteSuggestion
        + GetComplianceReports(page int, perPage int) (model.Compliances, *model.AppError)
        + SaveComplianceReport(rctx request.CTX, job *model.Compliance) (*model.Compliance, *model.AppError)
        + GetComplianceReport(reportId string) (*model.Compliance, *model.AppError)
        + GetComplianceFile(job *model.Compliance) ([]byte, *model.AppError)
        + Config() *model.Config
        + EnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + IsConfigReadOnly() bool
        + ReloadConfig() error
        + ClientConfig() <font color=blue>map</font>[string]string
        + ClientConfigHash() string
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + PostActionCookieSecret() []byte
        + GetCookieDomain() string
        + GetSiteURL() string
        + GetConfigFile(name string) ([]byte, error)
        + GetSanitizedConfig() *model.Config
        + GetEnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + HandleMessageExportConfig(cfg *model.Config, appCfg *model.Config) 
        + GetGlobalRetentionPolicy() (*model.GlobalRetentionPolicy, *model.AppError)
        + GetRetentionPolicies(offset int, limit int) (*model.RetentionPolicyWithTeamAndChannelCountsList, *model.AppError)
        + GetRetentionPoliciesCount() (int64, *model.AppError)
        + GetRetentionPolicy(policyID string) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + CreateRetentionPolicy(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + PatchRetentionPolicy(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + DeleteRetentionPolicy(policyID string) *model.AppError
        + GetTeamsForRetentionPolicy(policyID string, offset int, limit int) (*model.TeamsWithCount, *model.AppError)
        + AddTeamsToRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + RemoveTeamsFromRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + GetChannelsForRetentionPolicy(policyID string, offset int, limit int) (*model.ChannelsWithCount, *model.AppError)
        + AddChannelsToRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + RemoveChannelsFromRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + GetTeamPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForTeamList, *model.AppError)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForChannelList, *model.AppError)
        + GenerateAndSaveDesktopToken(createAt int64, user *model.User) (*string, *model.AppError)
        + ValidateDesktopToken(token string, expiryTime int64) (*model.User, *model.AppError)
        + DownloadFromURL(downloadURL string) ([]byte, error)
        + GetDraft(userID string, channelID string, rootID string) (*model.Draft, *model.AppError)
        + UpsertDraft(c request.CTX, draft *model.Draft, connectionID string) (*model.Draft, *model.AppError)
        + GetDraftsForUser(rctx request.CTX, userID string, teamID string) ([]*model.Draft, *model.AppError)
        + DeleteDraft(rctx request.CTX, draft *model.Draft, connectionID string) *model.AppError
        + CreateEmoji(c request.CTX, sessionUserId string, emoji *model.Emoji, multiPartImageData *multipart.Form) (*model.Emoji, *model.AppError)
        + GetEmojiList(c request.CTX, page int, perPage int, sort string) ([]*model.Emoji, *model.AppError)
        + DeleteEmoji(c request.CTX, emoji *model.Emoji) *model.AppError
        + GetEmoji(c request.CTX, emojiId string) (*model.Emoji, *model.AppError)
        + GetEmojiByName(c request.CTX, emojiName string) (*model.Emoji, *model.AppError)
        + GetMultipleEmojiByName(c request.CTX, names []string) ([]*model.Emoji, *model.AppError)
        + GetEmojiImage(c request.CTX, emojiId string) ([]byte, string, *model.AppError)
        + SearchEmoji(c request.CTX, name string, prefixOnly bool, limit int) ([]*model.Emoji, *model.AppError)
        + GetEmojiStaticURL(c request.CTX, emojiName string) (string, *model.AppError)
        + NotifySessionsExpired() error
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + BuildPostReactions(ctx request.CTX, postID string) (*[]ReactionImportData, *model.AppError)
        + ListExports() ([]string, *model.AppError)
        + GeneratePresignURLForExport(name string) (*model.PresignURLResponse, *model.AppError)
        + DeleteExport(name string) *model.AppError
        + FileBackend() filestore.FileBackend
        + ExportFileBackend() filestore.FileBackend
        + CheckMandatoryS3Fields(settings *model.FileSettings) *model.AppError
        + TestFileStoreConnection() *model.AppError
        + TestFileStoreConnectionWithConfig(cfg *model.FileSettings) *model.AppError
        + ReadFile(path string) ([]byte, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + ExportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + FileExists(path string) (bool, *model.AppError)
        + ExportFileExists(path string) (bool, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + MoveFile(oldPath string, newPath string) *model.AppError
        + WriteFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFile(fr io.Reader, path string) (int64, *model.AppError)
        + AppendFile(fr io.Reader, path string) (int64, *model.AppError)
        + RemoveFile(path string) *model.AppError
        + RemoveExportFile(path string) *model.AppError
        + ListDirectory(path string) ([]string, *model.AppError)
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ListDirectoryRecursively(path string) ([]string, *model.AppError)
        + RemoveDirectory(path string) *model.AppError
        + MigrateFilenamesToFileInfos(rctx request.CTX, post *model.Post) []*model.FileInfo
        + GeneratePublicLink(siteURL string, info *model.FileInfo) string
        + UploadFile(c request.CTX, data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + UploadFileForUserAndTeam(c request.CTX, data []byte, channelID string, filename string, rawUserId string, rawTeamId string) (*model.FileInfo, *model.AppError)
        + DoUploadFile(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, *model.AppError)
        + UploadFileX(c request.CTX, channelID string, name string, input io.Reader, opts ...<font color=blue>func</font>(*UploadFileTask) ) (*model.FileInfo, *model.AppError)
        + DoUploadFileExpectModification(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, []byte, *model.AppError)
        + HandleImages(rctx request.CTX, previewPathList []string, thumbnailPathList []string, fileData [][]byte) 
        + GetFileInfo(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        + SetFileSearchableContent(rctx request.CTX, fileID string, data string) *model.AppError
        + GetFileInfos(rctx request.CTX, page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFile(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        + CopyFileInfos(rctx request.CTX, userID string, fileIDs []string) ([]string, *model.AppError)
        + CreateZipFileAndAddFiles(fileBackend filestore.FileBackend, fileDatas []model.FileData, zipFileName string, directory string) error
        + SearchFilesInTeamForUser(c request.CTX, terms string, userId string, teamId string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.FileInfoList, *model.AppError)
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error
        + GetLastAccessibleFileTime() (int64, *model.AppError)
        + ComputeLastAccessibleFileTime() error
        + GetGroup(id string, opts *model.GetGroupOpts, viewRestrictions *model.ViewUsersRestrictions) (*model.Group, *model.AppError)
        + GetGroupByName(name string, opts model.GroupSearchOpts) (*model.Group, *model.AppError)
        + GetGroupByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsByUserId(userID string) ([]*model.Group, *model.AppError)
        + CreateGroup(group *model.Group) (*model.Group, *model.AppError)
        + CreateGroupWithUserIds(group *model.GroupWithUserIds) (*model.Group, *model.AppError)
        + UpdateGroup(group *model.Group) (*model.Group, *model.AppError)
        + DeleteGroup(groupID string) (*model.Group, *model.AppError)
        + RestoreGroup(groupID string) (*model.Group, *model.AppError)
        + GetGroupMemberCount(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, *model.AppError)
        + GetGroupMemberUsers(groupID string) ([]*model.User, *model.AppError)
        + GetGroupMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, int, *model.AppError)
        + GetGroupMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, int, *model.AppError)
        + GetUsersNotInGroupPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + UpsertGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + DeleteGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + UpsertGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncables(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, *model.AppError)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, *model.AppError)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, *model.AppError)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, *model.AppError)
        + ChannelMembersToRemove(teamID *string) ([]*model.ChannelMember, *model.AppError)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, *model.AppError)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, *model.AppError)
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + GetGroupsByIDs(groupIDs []string) ([]*model.Group, *model.AppError)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + UserIsInAdminRoleGroup(userID string, syncableID string, syncableType model.GroupSyncableType) (bool, *model.AppError)
        + UpsertGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + DeleteGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + NotifySelfHostedSignupProgress(progress string, userId string) 
        + BulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int) (*model.AppError, int)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + ListImports() ([]string, *model.AppError)
        + DoPostActionWithCookie(c request.CTX, postID string, actionId string, userID string, selectedOption string, cookie *model.PostActionCookie) (string, *model.AppError)
        + DoActionRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoLocalRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + OpenInteractiveDialog(request model.OpenDialogRequest) *model.AppError
        + SubmitInteractiveDialog(c request.CTX, request model.SubmitDialogRequest) (*model.SubmitDialogResponse, *model.AppError)
        + SendIPFiltersChangedEmail(c request.CTX, userID string) error
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + GetJobsByTypePage(c request.CTX, jobType string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByType(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypesPage(c request.CTX, jobType []string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByTypes(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, *model.AppError)
        + CreateJob(c request.CTX, job *model.Job) (*model.Job, *model.AppError)
        + CancelJob(c request.CTX, jobId string) *model.AppError
        + SessionHasPermissionToCreateJob(session model.Session, job *model.Job) (bool, *model.Permission)
        + SessionHasPermissionToReadJob(session model.Session, jobType string) (bool, *model.Permission)
        + SyncLdap(c request.CTX, includeRemovedMembers bool) 
        + TestLdap(rctx request.CTX) *model.AppError
        + GetLdapGroup(rctx request.CTX, ldapGroupID string) (*model.Group, *model.AppError)
        + GetAllLdapGroupsPage(rctx request.CTX, page int, perPage int, opts model.LdapGroupSearchOpts) ([]*model.Group, int, *model.AppError)
        + SwitchEmailToLdap(c request.CTX, email string, password string, code string, ldapLoginId string, ldapPassword string) (string, *model.AppError)
        + SwitchLdapToEmail(c request.CTX, ldapPassword string, code string, email string, newPassword string) (string, *model.AppError)
        + MigrateIdLDAP(c request.CTX, toAttribute string) *model.AppError
        + AddLdapPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddLdapPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + RemoveLdapPublicCertificate() *model.AppError
        + RemoveLdapPrivateCertificate() *model.AppError
        + GetUserLimits() (*model.UserLimits, *model.AppError)
        + CheckForClientSideCert(r *http.Request) (string, string, string)
        + AuthenticateUserForLogin(c request.CTX, id string, loginId string, password string, mfaToken string, cwsToken string, ldapOnly bool) (*model.User, *model.AppError)
        + GetUserForLogin(c request.CTX, id string, loginId string) (*model.User, *model.AppError)
        + DoLogin(c request.CTX, w http.ResponseWriter, r *http.Request, user *model.User, deviceID string, isMobile bool, isOAuthUser bool, isSaml bool) (*model.Session, *model.AppError)
        + AttachCloudSessionCookie(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AttachSessionCookies(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + DoAdvancedPermissionsMigration() 
        + SetPhase2PermissionsMigrationStatus(isComplete bool) error
        + DoEmojisPermissionsMigration() 
        + DoGuestRolesCreationMigration() 
        + DoSystemConsoleRolesCreationMigration() 
        + DoAppMigrations() 
        + SendNotifications(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, sender *model.User, parentPostList *model.PostList, setOnline bool) ([]string, error)
        + RemoveNotifications(c request.CTX, post *model.Post, channel *model.Channel) error
        + FilterUsersByVisible(c request.CTX, viewer *model.User, otherUsers []*model.User) ([]*model.User, *model.AppError)
        + GetNotificationNameFormat(user *model.User) string
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + UpdateMobileAppBadge(userID string) 
        + SendAckToPushProxy(ack *model.PushNotificationAck) error
        + ShouldSendPushNotification(user *model.User, channelNotifyProps model.StringMap, wasMentioned bool, status *model.Status, post *model.Post, isGM bool) bool
        + BuildPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) (*model.PushNotification, *model.AppError)
        + SendTestPushNotification(deviceID string) string
        + SaveAdminNotification(userId string, notifyData *model.NotifyAdminToUpgradeRequest) *model.AppError
        + DoCheckForAdminNotifications(trial bool) *model.AppError
        + SaveAdminNotifyData(data *model.NotifyAdminData) (*model.NotifyAdminData, *model.AppError)
        + SendNotifyAdminPosts(c request.CTX, workspaceName string, currentSKU string, trial bool) *model.AppError
        + UserAlreadyNotifiedOnRequiredFeature(user string, feature model.MattermostFeature) bool
        + CanNotifyAdmin(trial bool) bool
        + FinishSendAdminNotifyPost(trial bool, now int64, pluginBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData) 
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthApp(oldApp *model.OAuthApp, updatedApp *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + DeleteOAuthApp(appID string) *model.AppError
        + GetOAuthApps(page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthAppsByCreator(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthImplicitRedirect(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthCodeRedirect(userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + AllowOAuthAppAccessToUser(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthAccessTokenForImplicitFlow(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (*model.Session, *model.AppError)
        + GetOAuthAccessTokenForCodeFlow(c request.CTX, clientId string, grantType string, redirectURI string, code string, secret string, refreshToken string) (*model.AccessResponse, *model.AppError)
        + GetOAuthLoginEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, action string, redirectTo string, loginHint string, isMobile bool, desktopToken string) (string, *model.AppError)
        + GetOAuthSignupEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, desktopToken string) (string, *model.AppError)
        + GetAuthorizedAppsForUser(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + DeauthorizeOAuthAppForUser(c request.CTX, userID string, appID string) *model.AppError
        + RegenerateOAuthAppSecret(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + RevokeAccessToken(c request.CTX, token string) *model.AppError
        + CompleteOAuth(c request.CTX, service string, body io.ReadCloser, teamID string, props <font color=blue>map</font>[string]string, tokenUser *model.User) (*model.User, *model.AppError)
        + LoginByOAuth(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + CompleteSwitchWithOAuth(c request.CTX, service string, userData io.Reader, email string, tokenUser *model.User) (*model.User, *model.AppError)
        + CreateOAuthStateToken(extra string) (*model.Token, *model.AppError)
        + GetOAuthStateToken(token string) (*model.Token, *model.AppError)
        + GetAuthorizationCode(c request.CTX, w http.ResponseWriter, r *http.Request, service string, props <font color=blue>map</font>[string]string, loginHint string) (string, *model.AppError)
        + AuthorizeOAuthUser(c request.CTX, w http.ResponseWriter, r *http.Request, service string, code string, state string, redirectURI string) (io.ReadCloser, string, <font color=blue>map</font>[string]string, *model.User, *model.AppError)
        + SwitchEmailToOAuth(c request.CTX, w http.ResponseWriter, r *http.Request, email string, password string, code string, service string) (string, *model.AppError)
        + SwitchOAuthToEmail(c request.CTX, email string, password string, requesterId string) (string, *model.AppError)
        + CompleteOnboarding(c request.CTX, request *model.CompleteOnboardingRequest) *model.AppError
        + GetOnboarding() (*model.System, *model.AppError)
        + GetOpenGraphMetadata(requestURL string) ([]byte, error)
        + ResetPermissionsSystem() *model.AppError
        + ExportPermissions(w io.Writer) error
        + ImportPermissions(jsonl io.Reader) error
        + DoPermissionsMigrations() error
        + GetPluginsEnvironment() *plugin.Environment
        + NewPluginAPI(c request.CTX, manifest *model.Manifest) plugin.API
        + InitPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        + SyncPlugins() *model.AppError
        + GetActivePluginManifests() ([]*model.Manifest, *model.AppError)
        + EnablePlugin(id string) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + GetPlugins() (*model.PluginsResponse, *model.AppError)
        + GetMarketplacePlugins(filter *model.MarketplacePluginFilter) ([]*model.MarketplacePlugin, *model.AppError)
        + IsPluginActive(pluginName string) (bool, error)
        + RegisterPluginCommand(pluginID string, command *model.Command) error
        + UnregisterPluginCommand(pluginID string, teamID string, trigger string) 
        + CommandsForTeam(teamID string) []*model.Command
        + InstallPlugin(pluginFile io.ReadSeeker, replace bool) (*model.Manifest, *model.AppError)
        + SetPluginKey(pluginID string, key string, value []byte) *model.AppError
        + SetPluginKeyWithExpiry(pluginID string, key string, value []byte, expireInSeconds int64) *model.AppError
        + CompareAndSetPluginKey(pluginID string, key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + SetPluginKeyWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + CompareAndDeletePluginKey(pluginID string, key string, oldValue []byte) (bool, *model.AppError)
        + GetPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + DeleteAllKeysForPlugin(pluginID string) *model.AppError
        + DeleteAllExpiredPluginKeys() *model.AppError
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + ServeInterPluginRequest(w http.ResponseWriter, r *http.Request, sourcePluginId string, destinationPluginId string) 
        + GetPublicKey(name string) ([]byte, *model.AppError)
        + AddPublicKey(name string, key io.Reader) *model.AppError
        + DeletePublicKey(name string) *model.AppError
        + VerifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        + CreatePostAsUser(c request.CTX, post *model.Post, currentSessionId string, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostMissingChannel(c request.CTX, post *model.Post, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreatePost(c request.CTX, post *model.Post, channel *model.Channel, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + FillInPostProps(c request.CTX, post *model.Post, channel *model.Channel) *model.AppError
        + SendEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + UpdateEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + DeleteEphemeralPost(userID string, postID string) 
        + UpdatePost(c request.CTX, receivedUpdatedPost *model.Post, safeUpdate bool) (*model.Post, *model.AppError)
        + PatchPost(c request.CTX, postID string, patch *model.PostPatch) (*model.Post, *model.AppError)
        + GetPostsPage(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPosts(channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPostsEtag(channelID string, collapsedThreads bool) string
        + GetPostsSince(options model.GetPostsSinceOptions) (*model.PostList, *model.AppError)
        + GetSinglePost(postID string, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostThread(postID string, opts model.GetPostsOptions, userID string) (*model.PostList, *model.AppError)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPermalinkPost(c request.CTX, postID string, userID string) (*model.PostList, *model.AppError)
        + GetPostsBeforePost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAfterPost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAroundPost(before bool, options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostAfterTime(channelID string, time int64, collapsedThreads bool) (*model.Post, *model.AppError)
        + GetPostIdAfterTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIdBeforeTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetNextPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetPrevPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + AddCursorIdsForPostList(originalList *model.PostList, afterPost string, beforePost string, since int64, page int, perPage int, collapsedThreads bool) 
        + GetPostsForChannelAroundLastUnread(c request.CTX, channelID string, userID string, limitBefore int, limitAfter int, skipFetchThreads bool, collapsedThreads bool, collapsedThreadsExtended bool) (*model.PostList, *model.AppError)
        + DeletePost(c request.CTX, postID string, deleteByID string) (*model.Post, *model.AppError)
        + GetLastAccessiblePostTime() (int64, *model.AppError)
        + ComputeLastAccessiblePostTime() error
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) (*model.PostList, *model.AppError)
        + SearchPostsForUser(c request.CTX, terms string, userID string, teamID string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.PostSearchResults, *model.AppError)
        + GetFileInfosForPostWithMigration(rctx request.CTX, postID string, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        + GetFileInfosForPost(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, int64, *model.AppError)
        + PostWithProxyAddedToImageURLs(post *model.Post) *model.Post
        + PostWithProxyRemovedFromImageURLs(post *model.Post) *model.Post
        + PostPatchWithProxyRemovedFromImageURLs(patch *model.PostPatch) *model.PostPatch
        + ImageProxyAdder() <font color=blue>func</font>(string) string
        + ImageProxyRemover() <font color=blue>func</font>(string) string
        + MaxPostSize() int
        + GetThreadMembershipsForUser(userID string, teamID string) ([]*model.ThreadMembership, error)
        + GetPostIfAuthorized(c request.CTX, postID string, session *model.Session, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostsByIds(postIDs []string) ([]*model.Post, int64, *model.AppError)
        + GetEditHistoryForPost(postID string) ([]*model.Post, *model.AppError)
        + SetPostReminder(postID string, userID string, targetTime int64) *model.AppError
        + CheckPostReminders(rctx request.CTX) 
        + GetPostInfo(c request.CTX, postID string) (*model.PostInfo, *model.AppError)
        + ValidateMoveOrCopy(c request.CTX, wpl *model.WranglerPostList, originalChannel *model.Channel, targetChannel *model.Channel, user *model.User) error
        + CopyWranglerPostlist(c request.CTX, wpl *model.WranglerPostList, targetChannel *model.Channel) (*model.Post, *model.AppError)
        + MoveThread(c request.CTX, postID string, sourceChannelID string, channelID string, user *model.User) *model.AppError
        + SaveAcknowledgementForPost(c request.CTX, postID string, userID string) (*model.PostAcknowledgement, *model.AppError)
        + DeleteAcknowledgementForPost(c request.CTX, postID string, userID string) *model.AppError
        + GetAcknowledgementsForPost(postID string) ([]*model.PostAcknowledgement, *model.AppError)
        + GetAcknowledgementsForPostList(postList *model.PostList) (<font color=blue>map</font>[string][]*model.PostAcknowledgement, *model.AppError)
        + PreparePostListForClient(c request.CTX, originalList *model.PostList) *model.PostList
        + OverrideIconURLIfEmoji(c request.CTX, post *model.Post) 
        + PreparePostForClient(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostForClientWithEmbedsAndImages(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + SanitizePostMetadataForUser(c request.CTX, post *model.Post, userID string) (*model.Post, *model.AppError)
        + SanitizePostListMetadataForUser(c request.CTX, postList *model.PostList, userID string) (*model.PostList, *model.AppError)
        + ResolvePersistentNotification(c request.CTX, post *model.Post, loggedInUserID string) *model.AppError
        + DeletePersistentNotification(c request.CTX, post *model.Post) *model.AppError
        + SendPersistentNotifications() error
        + IsPersistentNotificationsEnabled() bool
        + GetPriorityForPost(postId string) (*model.PostPriority, *model.AppError)
        + GetPriorityForPostList(list *model.PostList) (<font color=blue>map</font>[string]*model.PostPriority, *model.AppError)
        + IsPostPriorityEnabled() bool
        + GetPreferencesForUser(c request.CTX, userID string) (model.Preferences, *model.AppError)
        + GetPreferenceByCategoryForUser(c request.CTX, userID string, category string) (model.Preferences, *model.AppError)
        + GetPreferenceByCategoryAndNameForUser(c request.CTX, userID string, category string, preferenceName string) (*model.Preference, *model.AppError)
        + UpdatePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + DeletePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + GetProductNotices(c request.CTX, userID string, teamID string, client model.NoticeClientType, clientVersion string, locale string) (model.NoticeMessages, *model.AppError)
        + UpdateViewedProductNotices(userID string, noticeIds []string) *model.AppError
        + UpdateViewedProductNoticesForNewUser(userID string) 
        + UpdateProductNotices() *model.AppError
        + SaveReactionForPost(c request.CTX, reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + GetReactionsForPost(postID string) ([]*model.Reaction, *model.AppError)
        + GetBulkReactionsForPosts(postIDs []string) (<font color=blue>map</font>[string][]*model.Reaction, *model.AppError)
        + DeleteReactionForPost(c request.CTX, reaction *model.Reaction) *model.AppError
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + UnregisterPluginForSharedChannels(pluginID string) error
        + AddRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + UpdateRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + DeleteRemoteCluster(remoteClusterId string) (bool, *model.AppError)
        + GetRemoteCluster(remoteClusterId string) (*model.RemoteCluster, *model.AppError)
        + GetAllRemoteClusters(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, *model.AppError)
        + UpdateRemoteClusterTopics(remoteClusterId string, topics string) (*model.RemoteCluster, *model.AppError)
        + SetRemoteClusterLastPingAt(remoteClusterId string) *model.AppError
        + GetRemoteClusterService() (remotecluster.RemoteClusterServiceIFace, *model.AppError)
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)
        + GetUserCountForReport(filter *model.UserReportOptions) (*int64, *model.AppError)
        + StartUsersBatchExport(rctx request.CTX, dateRange string, startAt int64, endAt int64) *model.AppError
        + GetRole(id string) (*model.Role, *model.AppError)
        + GetAllRoles() ([]*model.Role, *model.AppError)
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetRolesByNames(names []string) ([]*model.Role, *model.AppError)
        + PatchRole(role *model.Role, patch *model.RolePatch) (*model.Role, *model.AppError)
        + CreateRole(role *model.Role) (*model.Role, *model.AppError)
        + UpdateRole(role *model.Role) (*model.Role, *model.AppError)
        + CheckRolesExist(roleNames []string) *model.AppError
        + GetSamlMetadata(c request.CTX) (string, *model.AppError)
        + AddSamlPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlIdpCertificate(fileData *multipart.FileHeader) *model.AppError
        + RemoveSamlPublicCertificate() *model.AppError
        + RemoveSamlPrivateCertificate() *model.AppError
        + RemoveSamlIdpCertificate() *model.AppError
        + GetSamlCertificateStatus() *model.SamlCertificateStatus
        + GetSamlMetadataFromIdp(idpMetadataURL string) (*model.SamlMetadataResponse, *model.AppError)
        + FetchSamlMetadataFromIdp(url string) ([]byte, *model.AppError)
        + BuildSamlMetadataObject(idpMetadata []byte) (*model.SamlMetadataResponse, *model.AppError)
        + SetSamlIdpCertificateFromMetadata(data []byte) *model.AppError
        + ResetSamlAuthDataToEmail(includeDeleted bool, dryRun bool, userIDs []string) (int, *model.AppError)
        + CreateSamlRelayToken(extra string) (*model.Token, *model.AppError)
        + GetSamlEmailToken(token string) (*model.Token, *model.AppError)
        + GetScheme(id string) (*model.Scheme, *model.AppError)
        + GetSchemeByName(name string) (*model.Scheme, *model.AppError)
        + GetSchemesPage(scope string, page int, perPage int) ([]*model.Scheme, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + CreateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + PatchScheme(scheme *model.Scheme, patch *model.SchemePatch) (*model.Scheme, *model.AppError)
        + UpdateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + DeleteScheme(schemeId string) (*model.Scheme, *model.AppError)
        + GetTeamsForSchemePage(scheme *model.Scheme, page int, perPage int) ([]*model.Team, *model.AppError)
        + GetTeamsForScheme(scheme *model.Scheme, offset int, limit int) ([]*model.Team, *model.AppError)
        + GetChannelsForSchemePage(scheme *model.Scheme, page int, perPage int) (model.ChannelList, *model.AppError)
        + GetChannelsForScheme(scheme *model.Scheme, offset int, limit int) (model.ChannelList, *model.AppError)
        + IsPhase2MigrationCompleted() *model.AppError
        + SchemesIterator(scope string, batchSize int) <font color=blue>func</font>() []*model.Scheme
        + TestElasticsearch(rctx request.CTX, cfg *model.Config) *model.AppError
        + SetSearchEngine(se *searchengine.Broker) 
        + PurgeElasticsearchIndexes(c request.CTX) *model.AppError
        + PurgeBleveIndexes(c request.CTX) *model.AppError
        + ActiveSearchBackend() string
        + OriginChecker() <font color=blue>func</font>(*http.Request) bool
        + GetAppliedSchemaMigrations() ([]model.AppliedMigration, *model.AppError)
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, *model.AppError)
        + GetCloudSession(token string) (*model.Session, *model.AppError)
        + GetRemoteClusterSession(token string, remoteId string) (*model.Session, *model.AppError)
        + GetSession(token string) (*model.Session, *model.AppError)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, *model.AppError)
        + RevokeAllSessions(c request.CTX, userID string) *model.AppError
        + AddSessionToCache(session *model.Session) 
        + RevokeSessionsFromAllUsers() *model.AppError
        + ReturnSessionToPool(session *model.Session) 
        + ClearSessionCacheForUser(userID string) 
        + ClearSessionCacheForAllUsers() 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) *model.AppError
        + GetSessionById(c request.CTX, sessionID string) (*model.Session, *model.AppError)
        + RevokeSessionById(c request.CTX, sessionID string) *model.AppError
        + RevokeSession(c request.CTX, session *model.Session) *model.AppError
        + AttachDeviceId(sessionID string, deviceID string, expiresAt int64) *model.AppError
        + ExtendSessionExpiryIfNeeded(rctx request.CTX, session *model.Session) bool
        + GetSessionLengthInMillis(session *model.Session) int64
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + RevokeUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + DisableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + EnableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + GetUserAccessTokens(page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokensForUser(userID string, page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessToken(tokenID string, sanitize bool) (*model.UserAccessToken, *model.AppError)
        + SearchUserAccessTokens(term string) ([]*model.UserAccessToken, *model.AppError)
        + CheckCanInviteToSharedChannel(channelId string) error
        + ShareChannel(c request.CTX, sc *model.SharedChannel) (*model.SharedChannel, error)
        + GetSharedChannel(channelID string) (*model.SharedChannel, error)
        + HasSharedChannel(channelID string) (bool, error)
        + GetSharedChannels(page int, perPage int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, *model.AppError)
        + GetSharedChannelsCount(opts model.SharedChannelFilterOpts) (int64, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + SaveSharedChannelRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemote(id string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemoteByIds(channelID string, remoteID string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + HasRemote(channelID string, remoteID string) (bool, error)
        + GetRemoteClusterForUser(remoteID string, userID string) (*model.RemoteCluster, *model.AppError)
        + UpdateSharedChannelRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + DeleteSharedChannelRemote(id string) (bool, error)
        + GetSharedChannelRemotesStatus(channelID string) ([]*model.SharedChannelRemoteStatus, error)
        + NotifySharedChannelUserUpdate(user *model.User) 
        + UpdateSharedChannelCursor(channelID string, remoteID string, cursor model.GetPostsSinceForSyncCursor) error
        + SyncSharedChannel(channelID string) error
        + OnSharedChannelsSyncMsg(msg *model.SyncMsg, rc *model.RemoteCluster) (model.SyncResponse, error)
        + OnSharedChannelsPing(rc *model.RemoteCluster) bool
        + OnSharedChannelsAttachmentSyncMsg(fi *model.FileInfo, post *model.Post, rc *model.RemoteCluster) error
        + OnSharedChannelsProfileImageSyncMsg(user *model.User, rc *model.RemoteCluster) error
        + SlackImport(c request.CTX, fileData multipart.File, fileSize int64, teamID string) (*model.AppError, *bytes.Buffer)
        + ProcessSlackText(text string) string
        + ProcessSlackAttachments(attachments []*model.SlackAttachment) []*model.SlackAttachment
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusOutOfOffice(userID string) 
        + GetStatusFromCache(userID string) *model.Status
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + UpdateDNDStatusOfUsers() 
        + SetCustomStatus(c request.CTX, userID string, cs *model.CustomStatus) *model.AppError
        + RemoveCustomStatus(c request.CTX, userID string) *model.AppError
        + GetCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + RemoveRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        + GenerateSupportPacket(c request.CTX) []model.FileData
        + CreateDefaultMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        + DeleteGroupConstrainedMemberships(c request.CTX) error
        + SyncSyncableRoles(syncableID string, syncableType model.GroupSyncableType) *model.AppError
        + SyncRolesAndMembership(c request.CTX, syncableID string, syncableType model.GroupSyncableType, includeRemovedMembers bool) 
        + AdjustTeamsFromProductLimits(teamLimits *model.TeamsLimits) *model.AppError
        + CreateTeam(c request.CTX, team *model.Team) (*model.Team, *model.AppError)
        + CreateTeamWithUser(c request.CTX, team *model.Team, userID string) (*model.Team, *model.AppError)
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + RenameTeam(team *model.Team, newTeamName string, newDisplayName string) (*model.Team, *model.AppError)
        + UpdateTeamScheme(team *model.Team) (*model.Team, *model.AppError)
        + UpdateTeamPrivacy(teamID string, teamType string, allowOpenInvite bool) *model.AppError
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, *model.AppError)
        + RegenerateTeamInviteId(teamID string) (*model.Team, *model.AppError)
        + GetSchemeRolesForTeam(teamID string) (string, string, string, *model.AppError)
        + UpdateTeamMemberRoles(c request.CTX, teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + UpdateTeamMemberSchemeRoles(c request.CTX, teamID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.TeamMember, *model.AppError)
        + AddUserToTeam(c request.CTX, teamID string, userID string, userRequestorId string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByTeamId(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddUserToTeamByToken(c request.CTX, userID string, tokenID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByInviteId(c request.CTX, inviteId string, userID string) (*model.Team, *model.TeamMember, *model.AppError)
        + JoinUserToTeam(c request.CTX, team *model.Team, user *model.User, userRequestorId string) (*model.TeamMember, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + GetTeams(teamIDs []string) ([]*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamByInviteId(inviteId string) (*model.Team, *model.AppError)
        + GetAllTeams() ([]*model.Team, *model.AppError)
        + GetAllTeamsPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetAllTeamsPageWithCount(offset int, limit int, opts *model.TeamSearch) (*model.TeamsWithCount, *model.AppError)
        + GetAllPrivateTeams() ([]*model.Team, *model.AppError)
        + GetAllPublicTeams() ([]*model.Team, *model.AppError)
        + SearchAllTeams(searchOpts *model.TeamSearch) ([]*model.Team, int64, *model.AppError)
        + SearchPublicTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchPrivateTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + GetTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, *model.AppError)
        + AddTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMembers(c request.CTX, teamID string, userIDs []string, userRequestorId string, graceful bool) ([]*model.TeamMemberWithError, *model.AppError)
        + AddTeamMemberByToken(c request.CTX, userID string, tokenID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByInviteId(c request.CTX, inviteId string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamUnread(teamID string, userID string) (*model.TeamUnread, *model.AppError)
        + RemoveUserFromTeam(c request.CTX, teamID string, userID string, requestorId string) *model.AppError
        + LeaveTeam(c request.CTX, team *model.Team, user *model.User, requestorId string) *model.AppError
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteGuestsToChannelsGracefully(teamID string, guestsInvite *model.GuestsInvite, senderId string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteNewUsersToTeam(emailList []string, teamID string, senderId string) *model.AppError
        + InviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) *model.AppError
        + FindTeamByName(name string) bool
        + GetTeamsUnreadForUser(excludeTeamId string, userID string, includeCollapsedThreads bool) ([]*model.TeamUnread, *model.AppError)
        + PermanentDeleteTeamId(c request.CTX, teamID string) *model.AppError
        + PermanentDeleteTeam(c request.CTX, team *model.Team) *model.AppError
        + SoftDeleteTeam(teamID string) *model.AppError
        + RestoreTeam(teamID string) *model.AppError
        + GetTeamStats(teamID string, restrictions *model.ViewUsersRestrictions) (*model.TeamStats, *model.AppError)
        + GetTeamIdFromQuery(query url.Values) (string, *model.AppError)
        + SanitizeTeam(session model.Session, team *model.Team) *model.Team
        + SanitizeTeams(session model.Session, teams []*model.Team) []*model.Team
        + GetTeamIcon(team *model.Team) ([]byte, *model.AppError)
        + SetTeamIcon(teamID string, imageData *multipart.FileHeader) *model.AppError
        + SetTeamIconFromMultiPartFile(teamID string, file multipart.File) *model.AppError
        + SetTeamIconFromFile(team *model.Team, file io.Reader) *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + InvalidateAllEmailInvites(c request.CTX) *model.AppError
        + InvalidateAllResendInviteEmailJobs(c request.CTX) *model.AppError
        + ClearTeamMembersCache(teamID string) error
        + CreateTermsOfService(text string, userID string) (*model.TermsOfService, *model.AppError)
        + GetLatestTermsOfService() (*model.TermsOfService, *model.AppError)
        + GetTermsOfService(id string) (*model.TermsOfService, *model.AppError)
        + GetTrueUpProfile() (<font color=blue>map</font>[string]any, error)
        + GetOrCreateTrueUpReviewStatus() (*model.TrueUpReviewStatus, *model.AppError)
        + CreateUploadSession(c request.CTX, us *model.UploadSession) (*model.UploadSession, *model.AppError)
        + GetUploadSession(c request.CTX, uploadId string) (*model.UploadSession, *model.AppError)
        + GetUploadSessionsForUser(userID string) ([]*model.UploadSession, *model.AppError)
        + UploadData(c request.CTX, us *model.UploadSession, rd io.Reader) (*model.FileInfo, *model.AppError)
        + GetPostsUsage() (int64, *model.AppError)
        + GetStorageUsage() (int64, *model.AppError)
        + GetTeamsUsage() (*model.TeamsUsage, *model.AppError)
        + CreateUserWithToken(c request.CTX, user *model.User, token *model.Token) (*model.User, *model.AppError)
        + CreateUserWithInviteId(c request.CTX, user *model.User, inviteId string, redirect string) (*model.User, *model.AppError)
        + CreateUserAsAdmin(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserFromSignup(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + IsUserSignUpAllowed() *model.AppError
        + IsFirstUserAccount() bool
        + CreateUser(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateGuest(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateOAuthUser(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUsers(userIDs []string) ([]*model.User, *model.AppError)
        + GetUserByUsername(username string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUserByAuth(authData *string, authService string) (*model.User, *model.AppError)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersInChannel(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByStatus(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelMap(options *model.UserGetOptions, asAdmin bool) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersInChannelPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByStatus(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByAdmin(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInChannel(teamID string, channelID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInChannelMap(teamID string, channelID string, groupConstrained bool, offset int, limit int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersNotInChannelPage(teamID string, channelID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetTeamGroupUsers(teamID string) ([]*model.User, *model.AppError)
        + GetChannelGroupUsers(channelID string) ([]*model.User, *model.AppError)
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, *model.AppError)
        + GetUsersByGroupChannelIds(c request.CTX, channelIDs []string, asAdmin bool) (<font color=blue>map</font>[string][]*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GenerateMfaSecret(userID string) (*model.MfaSecret, *model.AppError)
        + ActivateMfa(userID string, token string) *model.AppError
        + DeactivateMfa(userID string) *model.AppError
        + GetProfileImagePath(user *model.User) (string, *model.AppError)
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + UpdateDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetProfileImage(c request.CTX, userID string, imageData *multipart.FileHeader) *model.AppError
        + SetProfileImageFromMultiPartFile(c request.CTX, userID string, file multipart.File) *model.AppError
        + AdjustImage(file io.Reader) (*bytes.Buffer, *model.AppError)
        + SetProfileImageFromFile(c request.CTX, userID string, file io.Reader) *model.AppError
        + UpdatePasswordAsUser(c request.CTX, userID string, currentPassword string, newPassword string) *model.AppError
        + UpdateActive(c request.CTX, user *model.User, active bool) (*model.User, *model.AppError)
        + DeactivateGuests(c request.CTX) *model.AppError
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + UpdateUserAsUser(c request.CTX, user *model.User, asAdmin bool) (*model.User, *model.AppError)
        + CheckProviderAttributes(c request.CTX, user *model.User, patch *model.UserPatch) string
        + PatchUser(c request.CTX, userID string, patch *model.UserPatch, asAdmin bool) (*model.User, *model.AppError)
        + UpdateUserAuth(c request.CTX, userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUser(c request.CTX, user *model.User, sendNotifications bool) (*model.User, *model.AppError)
        + UpdateUserActive(c request.CTX, userID string, active bool) *model.AppError
        + UpdateMfa(c request.CTX, activate bool, userID string, token string) *model.AppError
        + UpdatePasswordByUserIdSendEmail(c request.CTX, userID string, newPassword string, method string) *model.AppError
        + UpdatePassword(rctx request.CTX, user *model.User, newPassword string) *model.AppError
        + UpdatePasswordSendEmail(c request.CTX, user *model.User, newPassword string, method string) *model.AppError
        + UpdateHashedPasswordByUserId(userID string, newHashedPassword string) *model.AppError
        + UpdateHashedPassword(user *model.User, newHashedPassword string) *model.AppError
        + ResetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string) *model.AppError
        + SendPasswordReset(email string, siteURL string) (bool, *model.AppError)
        + CreatePasswordRecoveryToken(userID string, email string) (*model.Token, *model.AppError)
        + InvalidatePasswordRecoveryTokensForUser(userID string) *model.AppError
        + GetPasswordRecoveryToken(token string) (*model.Token, *model.AppError)
        + GetTokenById(token string) (*model.Token, *model.AppError)
        + DeleteToken(token *model.Token) *model.AppError
        + UpdateUserRoles(c request.CTX, userID string, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateUserRolesWithUser(c request.CTX, user *model.User, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + PermanentDeleteUser(c request.CTX, user *model.User) *model.AppError
        + PermanentDeleteAllUsers(c request.CTX) *model.AppError
        + SendEmailVerification(user *model.User, newEmail string, redirect string) *model.AppError
        + VerifyEmailFromToken(c request.CTX, userSuppliedTokenString string) *model.AppError
        + GetVerifyEmailToken(token string) (*model.Token, *model.AppError)
        + GetTotalUsersStats(viewRestrictions *model.ViewUsersRestrictions) (*model.UsersStats, *model.AppError)
        + GetFilteredUsersStats(options *model.UserCountOptions) (*model.UsersStats, *model.AppError)
        + VerifyUserEmail(userID string, email string) *model.AppError
        + SearchUsers(rctx request.CTX, props *model.UserSearch, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, *model.AppError)
        + AutocompleteUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInTeam, *model.AppError)
        + UpdateOAuthUserAttrs(c request.CTX, userData io.Reader, user *model.User, provider einterfaces.OAuthProvider, service string, tokenUser *model.User) *model.AppError
        + RestrictUsersGetByPermissions(c request.CTX, userID string, options *model.UserGetOptions) (*model.UserGetOptions, *model.AppError)
        + FilterNonGroupTeamMembers(userIDs []string, team *model.Team) ([]string, error)
        + FilterNonGroupChannelMembers(userIDs []string, channel *model.Channel) ([]string, error)
        + RestrictUsersSearchByPermissions(c request.CTX, userID string, options *model.UserSearchOptions) (*model.UserSearchOptions, *model.AppError)
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)
        + GetViewUsersRestrictions(c request.CTX, userID string) (*model.ViewUsersRestrictions, *model.AppError)
        + PromoteGuestToUser(c request.CTX, user *model.User, requestorId string) *model.AppError
        + DemoteUserToGuest(c request.CTX, user *model.User) *model.AppError
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + GetKnownUsers(userID string) ([]string, *model.AppError)
        + ConvertBotToUser(c request.CTX, bot *model.Bot, userPatch *model.UserPatch, sysadmin bool) (*model.User, *model.AppError)
        + GetThreadsForUser(userID string, teamID string, options model.GetUserThreadsOpts) (*model.Threads, *model.AppError)
        + GetThreadMembershipForUser(userId string, threadId string) (*model.ThreadMembership, *model.AppError)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadsReadForUser(userID string, teamID string) *model.AppError
        + UpdateThreadFollowForUser(userID string, teamID string, threadID string, state bool) *model.AppError
        + UpdateThreadFollowForUserFromChannelAdd(c request.CTX, userID string, teamID string, threadID string) *model.AppError
        + UpdateThreadReadForUserByPost(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, postID string) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadReadForUser(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, timestamp int64) (*model.ThreadResponse, *model.AppError)
        + GetUsersWithInvalidEmails(page int, perPage int) ([]*model.User, *model.AppError)
        + UserIsFirstAdmin(user *model.User) bool
        + GetUserTermsOfService(userID string) (*model.UserTermsOfService, *model.AppError)
        + SaveUserTermsOfService(userID string, termsOfServiceId string, accepted bool) *model.AppError
        + PopulateWebConnConfig(s *model.Session, cfg *platform.WebConnConfig, seqVal string) (*platform.WebConnConfig, error)
        + TotalWebsocketConnections() int
        + GetHubForUserId(userID string) *platform.Hub
        + HubRegister(webConn *platform.WebConn) 
        + HubUnregister(webConn *platform.WebConn) 
        + Publish(message *model.WebSocketEvent) 
        + InvalidateCacheForUser(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + SessionIsRegistered(session model.Session) bool
        + CheckWebConn(userID string, connectionID string) *platform.CheckConnResult
        + TriggerWebhook(c request.CTX, payload *model.OutgoingWebhookPayload, hook *model.OutgoingWebhook, post *model.Post, channel *model.Channel) 
        + CreateWebhookPost(c request.CTX, userID string, channel *model.Channel, text string, overrideUsername string, overrideIconURL string, overrideIconEmoji string, props model.StringInterface, postType string, postRootId string) (*model.Post, *model.AppError)
        + CreateIncomingWebhookForChannel(creatorId string, channel *model.Channel, hook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + UpdateIncomingWebhook(oldHook *model.IncomingWebhook, updatedHook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + DeleteIncomingWebhook(hookID string) *model.AppError
        + GetIncomingWebhook(hookID string) (*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPage(page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + CreateOutgoingWebhook(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + UpdateOutgoingWebhook(c request.CTX, oldHook *model.OutgoingWebhook, updatedHook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhook(hookID string) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPage(page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForChannelPageByUser(channelID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + DeleteOutgoingWebhook(hookID string) *model.AppError
        + RegenOutgoingWebhookToken(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + HandleIncomingWebhook(c request.CTX, hookID string, req *model.IncomingWebhookRequest) *model.AppError
        + CreateCommandWebhook(commandID string, args *model.CommandArgs) (*model.CommandWebhook, *model.AppError)
        + HandleCommandWebhook(c request.CTX, hookID string, response *model.CommandResponse) *model.AppError

    }
    interface AppIface  {
        + ExecuteCommand(c request.CTX, args *model.CommandArgs) (*model.CommandResponse, *model.AppError)
        + ListAutocompleteCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + CreateCommandPost(c request.CTX, post *model.Post, teamID string, response *model.CommandResponse, skipSlackParsing bool) (*model.Post, *model.AppError)
        + AddChannelMember(c request.CTX, userID string, channel *model.Channel, opts ChannelMemberOpts) (*model.ChannelMember, *model.AppError)
        + AddCursorIdsForPostList(originalList *model.PostList, afterPost string, beforePost string, since int64, page int, perPage int, collapsedThreads bool) 
        + AddPublicKey(name string, key io.Reader) *model.AppError
        + AddUserToChannel(c request.CTX, user *model.User, channel *model.Channel, skipTeamMemberIntegrityCheck bool) (*model.ChannelMember, *model.AppError)
        + ExportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + FileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        + ChannelMembersMinusGroupMembers(channelID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + ChannelMembersToAdd(since int64, channelID *string, includeRemovedMembers bool) ([]*model.UserChannelIDPair, *model.AppError)
        + CheckProviderAttributes(c request.CTX, user *model.User, patch *model.UserPatch) string
        + CommandsForTeam(teamID string) []*model.Command
        + ComputeLastAccessibleFileTime() error
        + ComputeLastAccessiblePostTime() error
        + ConvertBotToUser(c request.CTX, bot *model.Bot, userPatch *model.UserPatch, sysadmin bool) (*model.User, *model.AppError)
        + ConvertUserToBot(user *model.User) (*model.Bot, *model.AppError)
        + SendSubscriptionHistoryEvent(userID string) (*model.SubscriptionHistory, error)
        + CreateBot(c request.CTX, bot *model.Bot) (*model.Bot, *model.AppError)
        + CreateChannelScheme(c request.CTX, channel *model.Channel) (*model.Scheme, *model.AppError)
        + CreateDefaultMemberships(c request.CTX, params model.CreateDefaultMembershipParams) error
        + CreateGuest(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + CreateUser(c request.CTX, user *model.User) (*model.User, *model.AppError)
        + MigrateFilenamesToFileInfos(rctx request.CTX, post *model.Post) []*model.FileInfo
        + DefaultChannelNames(c request.CTX) []string
        + DeleteChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + DeleteGroupConstrainedMemberships(c request.CTX) error
        + DeletePersistentNotification(c request.CTX, post *model.Post) *model.AppError
        + DeletePublicKey(name string) *model.AppError
        + DemoteUserToGuest(c request.CTX, user *model.User) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + DoPermissionsMigrations() error
        + EnablePlugin(id string) *model.AppError
        + EnsureBot(rctx request.CTX, pluginID string, bot *model.Bot) (string, error)
        + ProcessSlackAttachments(attachments []*model.SlackAttachment) []*model.SlackAttachment
        + ExtendSessionExpiryIfNeeded(rctx request.CTX, session *model.Session) bool
        + FillInPostProps(c request.CTX, post *model.Post, channel *model.Channel) *model.AppError
        + FilterNonGroupChannelMembers(userIDs []string, channel *model.Channel) ([]string, error)
        + FilterNonGroupTeamMembers(userIDs []string, team *model.Team) ([]string, error)
        + GetAllLdapGroupsPage(rctx request.CTX, page int, perPage int, opts model.LdapGroupSearchOpts) ([]*model.Group, int, *model.AppError)
        + GetBot(botUserId string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) (model.BotList, *model.AppError)
        + GetChannelGroupUsers(channelID string) ([]*model.User, *model.AppError)
        + GetChannelModerationsForChannel(c request.CTX, channel *model.Channel) ([]*model.ChannelModeration, *model.AppError)
        + GetClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetConfigFile(name string) ([]byte, error)
        + GetEmojiStaticURL(c request.CTX, emojiName string) (string, *model.AppError)
        + GetEnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + GetFileInfosForPost(rctx request.CTX, postID string, fromMaster bool, includeDeleted bool) ([]*model.FileInfo, int64, *model.AppError)
        + GetFilteredUsersStats(options *model.UserCountOptions) (*model.UsersStats, *model.AppError)
        + GetGroupsByTeam(teamID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetKnownUsers(userID string) ([]string, *model.AppError)
        + GetLastAccessibleFileTime() (int64, *model.AppError)
        + GetLastAccessiblePostTime() (int64, *model.AppError)
        + GetLdapGroup(rctx request.CTX, ldapGroupID string) (*model.Group, *model.AppError)
        + GetMarketplacePlugins(filter *model.MarketplacePluginFilter) ([]*model.MarketplacePlugin, *model.AppError)
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + GetPluginsEnvironment() *plugin.Environment
        + GetPostsByIds(postIDs []string) ([]*model.Post, int64, *model.AppError)
        + GetPostsUsage() (int64, *model.AppError)
        + GetProductNotices(c request.CTX, userID string, teamID string, client model.NoticeClientType, clientVersion string, locale string) (model.NoticeMessages, *model.AppError)
        + GetProfileImagePath(user *model.User) (string, *model.AppError)
        + GetPublicKey(name string) ([]byte, *model.AppError)
        + GetSanitizedConfig() *model.Config
        + GetSchemeRolesForChannel(c request.CTX, channelID string) (string, string, string, *model.AppError)
        + GetSessionLengthInMillis(session *model.Session) int64
        + GetStorageUsage() (int64, *model.AppError)
        + GetSuggestions(c request.CTX, commandArgs *model.CommandArgs, commands []*model.Command, roleID string) []model.AutocompleteSuggestion
        + GetTeamGroupUsers(teamID string) ([]*model.User, *model.AppError)
        + GetTeamSchemeChannelRoles(c request.CTX, teamID string) (string, string, string, *model.AppError)
        + GetTotalUsersStats(viewRestrictions *model.ViewUsersRestrictions) (*model.UsersStats, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + HasRemote(channelID string, remoteID string) (bool, error)
        + HubRegister(webConn *platform.WebConn) 
        + HubUnregister(webConn *platform.WebConn) 
        + InstallPlugin(pluginFile io.ReadSeeker, replace bool) (*model.Manifest, *model.AppError)
        + LogAuditRec(rctx request.CTX, rec *audit.Record, err error) 
        + LogAuditRecWithLevel(rctx request.CTX, rec *audit.Record, level mlog.Level, err error) 
        + MakeAuditRecord(rctx request.CTX, event string, initialStatus string) *audit.Record
        + MarkChannelAsUnreadFromPost(c request.CTX, postID string, userID string, collapsedThreadsSupported bool) (*model.ChannelUnreadAt, *model.AppError)
        + MentionsToPublicChannels(c request.CTX, message string, teamID string) model.ChannelMentionMap
        + MentionsToTeamMembers(c request.CTX, message string, teamID string) model.UserMentionMap
        + MoveChannel(c request.CTX, team *model.Team, channel *model.Channel, user *model.User) *model.AppError
        + NotifySessionsExpired() error
        + OnSharedChannelsAttachmentSyncMsg(fi *model.FileInfo, post *model.Post, rc *model.RemoteCluster) error
        + OnSharedChannelsPing(rc *model.RemoteCluster) bool
        + OnSharedChannelsProfileImageSyncMsg(user *model.User, rc *model.RemoteCluster) error
        + OnSharedChannelsSyncMsg(msg *model.SyncMsg, rc *model.RemoteCluster) (model.SyncResponse, error)
        + OverrideIconURLIfEmoji(c request.CTX, post *model.Post) 
        + PatchBot(rctx request.CTX, botUserId string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + PatchChannelModerationsForChannel(c request.CTX, channel *model.Channel, channelModerationsPatch []*model.ChannelModerationPatch) ([]*model.ChannelModeration, *model.AppError)
        + DoActionRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + PermanentDeleteBot(botUserId string) *model.AppError
        + PopulateWebConnConfig(s *model.Session, cfg *platform.WebConnConfig, seqVal string) (*platform.WebConnConfig, error)
        + PromoteGuestToUser(c request.CTX, user *model.User, requestorId string) *model.AppError
        + RemoveConfigListener(id string) 
        + RenameChannel(c request.CTX, channel *model.Channel, newChannelName string, newDisplayName string) (*model.Channel, *model.AppError)
        + RenameTeam(team *model.Team, newTeamName string, newDisplayName string) (*model.Team, *model.AppError)
        + ResolvePersistentNotification(c request.CTX, post *model.Post, loggedInUserID string) *model.AppError
        + RevokeSessionsFromAllUsers() *model.AppError
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)
        + SearchAllChannels(c request.CTX, term string, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, int64, *model.AppError)
        + SearchAllTeams(searchOpts *model.TeamSearch) ([]*model.Team, int64, *model.AppError)
        + SendNoCardPaymentFailedEmail() *model.AppError
        + SessionHasPermissionToChannels(c request.CTX, session model.Session, channelIDs []string, permission *model.Permission) bool
        + SessionHasPermissionToManageBot(session model.Session, botUserId string) *model.AppError
        + SessionHasPermissionToTeams(c request.CTX, session model.Session, teamIDs []string, permission *model.Permission) bool
        + SessionIsRegistered(session model.Session) bool
        + SetSessionExpireInHours(session *model.Session, hours int) 
        + SetStatusDoNotDisturbTimed(userId string, endtime int64) 
        + SetStatusLastActivityAt(userID string, activityAt int64) 
        + SyncLdap(c request.CTX, includeRemovedMembers bool) 
        + SyncPlugins() *model.AppError
        + SyncRolesAndMembership(c request.CTX, syncableID string, syncableType model.GroupSyncableType, includeRemovedMembers bool) 
        + SyncSharedChannel(channelID string) error
        + SyncSyncableRoles(syncableID string, syncableType model.GroupSyncableType) *model.AppError
        + TeamMembersMinusGroupMembers(teamID string, groupIDs []string, page int, perPage int) ([]*model.UserWithGroups, int64, *model.AppError)
        + TeamMembersToAdd(since int64, teamID *string, includeRemovedMembers bool) ([]*model.UserTeamIDPair, *model.AppError)
        + DoAdvancedPermissionsMigration() 
        + CreateZipFileAndAddFiles(fileBackend filestore.FileBackend, fileDatas []model.FileData, zipFileName string, directory string) error
        + DoubleCheckPassword(rctx request.CTX, user *model.User, password string) *model.AppError
        + UpdateBotActive(c request.CTX, botUserId string, active bool) (*model.Bot, *model.AppError)
        + UpdateBotOwner(botUserId string, newOwnerId string) (*model.Bot, *model.AppError)
        + UpdateChannel(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateChannelScheme(c request.CTX, channel *model.Channel) (*model.Channel, *model.AppError)
        + UpdateDNDStatusOfUsers() 
        + UpdateProductNotices() *model.AppError
        + UpdateSharedChannelCursor(channelID string, remoteID string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateViewedProductNotices(userID string, noticeIds []string) *model.AppError
        + UpdateViewedProductNoticesForNewUser(userID string) 
        + UpdateWebConnUserActivity(session model.Session, activityAt int64) 
        + UploadFile(c request.CTX, data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + UploadFileX(c request.CTX, channelID string, name string, input io.Reader, opts ...<font color=blue>func</font>(*UploadFileTask) ) (*model.FileInfo, *model.AppError)
        + UserIsInAdminRoleGroup(userID string, syncableID string, syncableType model.GroupSyncableType) (bool, *model.AppError)
        + ValidateUserPermissionsOnChannels(c request.CTX, userId string, channelIds []string) []string
        + VerifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        + ValidateMoveOrCopy(c request.CTX, wpl *model.WranglerPostList, originalChannel *model.Channel, targetChannel *model.Channel, user *model.User) error
        + AccountMigration() einterfaces.AccountMigrationInterface
        + ActivateMfa(userID string, token string) *model.AppError
        + ActiveSearchBackend() string
        + AddChannelsToRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + AddDirectChannels(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddLdapPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddLdapPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + AddSamlIdpCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPrivateCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSamlPublicCertificate(fileData *multipart.FileHeader) *model.AppError
        + AddSessionToCache(session *model.Session) 
        + AddTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByInviteId(c request.CTX, inviteId string, userID string) (*model.TeamMember, *model.AppError)
        + AddTeamMemberByToken(c request.CTX, userID string, tokenID string) (*model.TeamMember, *model.AppError)
        + AddTeamMembers(c request.CTX, teamID string, userIDs []string, userRequestorId string, graceful bool) ([]*model.TeamMemberWithError, *model.AppError)
        + AddTeamsToRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + AddUserToTeam(c request.CTX, teamID string, userID string, userRequestorId string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByInviteId(c request.CTX, inviteId string, userID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AddUserToTeamByTeamId(c request.CTX, teamID string, user *model.User) *model.AppError
        + AddUserToTeamByToken(c request.CTX, userID string, tokenID string) (*model.Team, *model.TeamMember, *model.AppError)
        + AdjustImage(file io.Reader) (*bytes.Buffer, *model.AppError)
        + AdjustInProductLimits(limits *model.ProductLimits, subscription *model.Subscription) *model.AppError
        + AdjustTeamsFromProductLimits(teamLimits *model.TeamsLimits) *model.AppError
        + AllowOAuthAppAccessToUser(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + AppendFile(fr io.Reader, path string) (int64, *model.AppError)
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + AttachCloudSessionCookie(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AttachDeviceId(sessionID string, deviceID string, expiresAt int64) *model.AppError
        + AttachSessionCookies(c request.CTX, w http.ResponseWriter, r *http.Request) 
        + AuthenticateUserForLogin(c request.CTX, id string, loginId string, password string, mfaToken string, cwsToken string, ldapOnly bool) (*model.User, *model.AppError)
        + AuthorizeOAuthUser(c request.CTX, w http.ResponseWriter, r *http.Request, service string, code string, state string, redirectURI string) (io.ReadCloser, string, <font color=blue>map</font>[string]string, *model.User, *model.AppError)
        + AutocompleteChannels(c request.CTX, userID string, term string) (model.ChannelListWithTeamData, *model.AppError)
        + AutocompleteChannelsForSearch(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteChannelsForTeam(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + AutocompleteUsersInChannel(rctx request.CTX, teamID string, channelID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInChannel, *model.AppError)
        + AutocompleteUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) (*model.UserAutocompleteInTeam, *model.AppError)
        + BuildPostReactions(ctx request.CTX, postID string) (*[]ReactionImportData, *model.AppError)
        + BuildPushNotificationMessage(c request.CTX, contentsConfig string, post *model.Post, user *model.User, channel *model.Channel, channelName string, senderName string, explicitMention bool, channelWideMention bool, replyToThreadType string) (*model.PushNotification, *model.AppError)
        + BuildSamlMetadataObject(idpMetadata []byte) (*model.SamlMetadataResponse, *model.AppError)
        + BulkExport(ctx request.CTX, writer io.Writer, outPath string, job *model.Job, opts model.BulkExportOpts) *model.AppError
        + BulkImport(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int) (*model.AppError, int)
        + BulkImportWithPath(c request.CTX, jsonlReader io.Reader, attachmentsReader *zip.Reader, dryRun bool, workers int, importPath string) (*model.AppError, int)
        + CanNotifyAdmin(trial bool) bool
        + CancelJob(c request.CTX, jobId string) *model.AppError
        + ChannelMembersToRemove(teamID *string) ([]*model.ChannelMember, *model.AppError)
        + Channels() *Channels
        + CheckCanInviteToSharedChannel(channelId string) error
        + CheckForClientSideCert(r *http.Request) (string, string, string)
        + CheckIntegrity() <font color=blue>chan</font> model.IntegrityCheckResult
        + CheckMandatoryS3Fields(settings *model.FileSettings) *model.AppError
        + CheckPasswordAndAllCriteria(rctx request.CTX, user *model.User, password string, mfaToken string) *model.AppError
        + CheckPostReminders(rctx request.CTX) 
        + CheckRolesExist(roleNames []string) *model.AppError
        + CheckUserAllAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckUserMfa(rctx request.CTX, user *model.User, token string) *model.AppError
        + CheckUserPostflightAuthenticationCriteria(rctx request.CTX, user *model.User) *model.AppError
        + CheckUserPreflightAuthenticationCriteria(rctx request.CTX, user *model.User, mfaToken string) *model.AppError
        + CheckWebConn(userID string, connectionID string) *platform.CheckConnResult
        + CleanupReportChunks(format string, prefix string, numberOfChunks int) *model.AppError
        + ClearChannelMembersCache(c request.CTX, channelID string) error
        + ClearLatestVersionCache(rctx request.CTX) 
        + ClearSessionCacheForAllUsers() 
        + ClearSessionCacheForAllUsersSkipClusterSend() 
        + ClearSessionCacheForUser(userID string) 
        + ClearSessionCacheForUserSkipClusterSend(userID string) 
        + ClearTeamMembersCache(teamID string) error
        + ClientConfig() <font color=blue>map</font>[string]string
        + ClientConfigHash() string
        + Cloud() einterfaces.CloudInterface
        + Cluster() einterfaces.ClusterInterface
        + CompareAndDeletePluginKey(pluginID string, key string, oldValue []byte) (bool, *model.AppError)
        + CompareAndSetPluginKey(pluginID string, key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + CompileReportChunks(format string, prefix string, numberOfChunks int, headers []string) *model.AppError
        + CompleteOAuth(c request.CTX, service string, body io.ReadCloser, teamID string, props <font color=blue>map</font>[string]string, tokenUser *model.User) (*model.User, *model.AppError)
        + CompleteOnboarding(c request.CTX, request *model.CompleteOnboardingRequest) *model.AppError
        + CompleteSwitchWithOAuth(c request.CTX, service string, userData io.Reader, email string, tokenUser *model.User) (*model.User, *model.AppError)
        + Compliance() einterfaces.ComplianceInterface
        + Config() *model.Config
        + ConvertGroupMessageToChannel(c request.CTX, convertedByUserId string, gmConversionRequest *model.GroupMessageConversionRequestBody) (*model.Channel, *model.AppError)
        + CopyFileInfos(rctx request.CTX, userID string, fileIDs []string) ([]string, *model.AppError)
        + CopyWranglerPostlist(c request.CTX, wpl *model.WranglerPostList, targetChannel *model.Channel) (*model.Post, *model.AppError)
        + CreateChannel(c request.CTX, channel *model.Channel, addMember bool) (*model.Channel, *model.AppError)
        + CreateChannelWithUser(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + CreateCommand(cmd *model.Command) (*model.Command, *model.AppError)
        + CreateCommandWebhook(commandID string, args *model.CommandArgs) (*model.CommandWebhook, *model.AppError)
        + CreateEmoji(c request.CTX, sessionUserId string, emoji *model.Emoji, multiPartImageData *multipart.Form) (*model.Emoji, *model.AppError)
        + CreateGroup(group *model.Group) (*model.Group, *model.AppError)
        + CreateGroupChannel(c request.CTX, userIDs []string, creatorId string) (*model.Channel, *model.AppError)
        + CreateGroupWithUserIds(group *model.GroupWithUserIds) (*model.Group, *model.AppError)
        + CreateIncomingWebhookForChannel(creatorId string, channel *model.Channel, hook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + CreateJob(c request.CTX, job *model.Job) (*model.Job, *model.AppError)
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + CreateOAuthStateToken(extra string) (*model.Token, *model.AppError)
        + CreateOAuthUser(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + CreateOutgoingWebhook(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + CreatePasswordRecoveryToken(userID string, email string) (*model.Token, *model.AppError)
        + CreatePost(c request.CTX, post *model.Post, channel *model.Channel, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostAsUser(c request.CTX, post *model.Post, currentSessionId string, setOnline bool) (*model.Post, *model.AppError)
        + CreatePostMissingChannel(c request.CTX, post *model.Post, triggerWebhooks bool, setOnline bool) (*model.Post, *model.AppError)
        + CreateRetentionPolicy(policy *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + CreateRole(role *model.Role) (*model.Role, *model.AppError)
        + CreateSamlRelayToken(extra string) (*model.Token, *model.AppError)
        + CreateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + CreateSession(c request.CTX, session *model.Session) (*model.Session, *model.AppError)
        + CreateSidebarCategory(c request.CTX, userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + CreateTeam(c request.CTX, team *model.Team) (*model.Team, *model.AppError)
        + CreateTeamWithUser(c request.CTX, team *model.Team, userID string) (*model.Team, *model.AppError)
        + CreateTermsOfService(text string, userID string) (*model.TermsOfService, *model.AppError)
        + CreateUploadSession(c request.CTX, us *model.UploadSession) (*model.UploadSession, *model.AppError)
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + CreateUserAsAdmin(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserFromSignup(c request.CTX, user *model.User, redirect string) (*model.User, *model.AppError)
        + CreateUserWithInviteId(c request.CTX, user *model.User, inviteId string, redirect string) (*model.User, *model.AppError)
        + CreateUserWithToken(c request.CTX, user *model.User, token *model.Token) (*model.User, *model.AppError)
        + CreateWebhookPost(c request.CTX, userID string, channel *model.Channel, text string, overrideUsername string, overrideIconURL string, overrideIconEmoji string, props model.StringInterface, postType string, postRootId string) (*model.Post, *model.AppError)
        + DBHealthCheckDelete() error
        + DBHealthCheckWrite() error
        + DataRetention() einterfaces.DataRetentionInterface
        + DeactivateGuests(c request.CTX) *model.AppError
        + DeactivateMfa(userID string) *model.AppError
        + DeauthorizeOAuthAppForUser(c request.CTX, userID string, appID string) *model.AppError
        + DeleteAcknowledgementForPost(c request.CTX, postID string, userID string) *model.AppError
        + DeleteAllExpiredPluginKeys() *model.AppError
        + DeleteAllKeysForPlugin(pluginID string) *model.AppError
        + DeleteBrandImage(rctx request.CTX) *model.AppError
        + DeleteChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + DeleteCommand(commandID string) *model.AppError
        + DeleteDraft(rctx request.CTX, draft *model.Draft, connectionID string) *model.AppError
        + DeleteEmoji(c request.CTX, emoji *model.Emoji) *model.AppError
        + DeleteEphemeralPost(userID string, postID string) 
        + DeleteExport(name string) *model.AppError
        + DeleteGroup(groupID string) (*model.Group, *model.AppError)
        + DeleteGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + DeleteGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + DeleteGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + DeleteIncomingWebhook(hookID string) *model.AppError
        + DeleteOAuthApp(appID string) *model.AppError
        + DeleteOutgoingWebhook(hookID string) *model.AppError
        + DeletePluginKey(pluginID string, key string) *model.AppError
        + DeletePost(c request.CTX, postID string, deleteByID string) (*model.Post, *model.AppError)
        + DeletePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + DeleteReactionForPost(c request.CTX, reaction *model.Reaction) *model.AppError
        + DeleteRemoteCluster(remoteClusterId string) (bool, *model.AppError)
        + DeleteRetentionPolicy(policyID string) *model.AppError
        + DeleteScheme(schemeId string) (*model.Scheme, *model.AppError)
        + DeleteSharedChannelRemote(id string) (bool, error)
        + DeleteSidebarCategory(c request.CTX, userID string, teamID string, categoryId string) *model.AppError
        + DeleteToken(token *model.Token) *model.AppError
        + DisableAutoResponder(rctx request.CTX, userID string, asAdmin bool) *model.AppError
        + DisableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + DoAppMigrations() 
        + DoCheckForAdminNotifications(trial bool) *model.AppError
        + DoCommandRequest(rctx request.CTX, cmd *model.Command, p url.Values) (*model.Command, *model.CommandResponse, *model.AppError)
        + DoEmojisPermissionsMigration() 
        + DoGuestRolesCreationMigration() 
        + DoLocalRequest(c request.CTX, rawURL string, body []byte) (*http.Response, *model.AppError)
        + DoLogin(c request.CTX, w http.ResponseWriter, r *http.Request, user *model.User, deviceID string, isMobile bool, isOAuthUser bool, isSaml bool) (*model.Session, *model.AppError)
        + DoPostActionWithCookie(c request.CTX, postID string, actionId string, userID string, selectedOption string, cookie *model.PostActionCookie) (string, *model.AppError)
        + DoSubscriptionRenewalCheck() 
        + DoSystemConsoleRolesCreationMigration() 
        + DoUploadFile(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, *model.AppError)
        + DoUploadFileExpectModification(c request.CTX, now time.Time, rawTeamId string, rawChannelId string, rawUserId string, rawFilename string, data []byte) (*model.FileInfo, []byte, *model.AppError)
        + DownloadFromURL(downloadURL string) ([]byte, error)
        + EnableUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + EnvironmentConfig(filter <font color=blue>func</font>(reflect.StructField) bool) <font color=blue>map</font>[string]any
        + ExportFileBackend() filestore.FileBackend
        + ExportFileExists(path string) (bool, *model.AppError)
        + ExportFileModTime(path string) (time.Time, *model.AppError)
        + ExportPermissions(w io.Writer) error
        + ExtractContentFromFileInfo(rctx request.CTX, fileInfo *model.FileInfo) error
        + FetchSamlMetadataFromIdp(url string) ([]byte, *model.AppError)
        + FileBackend() filestore.FileBackend
        + FileExists(path string) (bool, *model.AppError)
        + FileModTime(path string) (time.Time, *model.AppError)
        + FileSize(path string) (int64, *model.AppError)
        + FillInChannelProps(c request.CTX, channel *model.Channel) *model.AppError
        + FillInChannelsProps(c request.CTX, channelList model.ChannelList) *model.AppError
        + FilterUsersByVisible(c request.CTX, viewer *model.User, otherUsers []*model.User) ([]*model.User, *model.AppError)
        + FindTeamByName(name string) bool
        + FinishSendAdminNotifyPost(trial bool, now int64, pluginBasedData <font color=blue>map</font>[string][]*model.NotifyAdminData) 
        + GenerateAndSaveDesktopToken(createAt int64, user *model.User) (*string, *model.AppError)
        + GenerateMfaSecret(userID string) (*model.MfaSecret, *model.AppError)
        + GeneratePresignURLForExport(name string) (*model.PresignURLResponse, *model.AppError)
        + GeneratePublicLink(siteURL string, info *model.FileInfo) string
        + GenerateSupportPacket(c request.CTX) []model.FileData
        + GetAcknowledgementsForPost(postID string) ([]*model.PostAcknowledgement, *model.AppError)
        + GetAcknowledgementsForPostList(postList *model.PostList) (<font color=blue>map</font>[string][]*model.PostAcknowledgement, *model.AppError)
        + GetActivePluginManifests() ([]*model.Manifest, *model.AppError)
        + GetAllChannels(c request.CTX, page int, perPage int, opts model.ChannelSearchOpts) (model.ChannelListWithTeamData, *model.AppError)
        + GetAllChannelsCount(c request.CTX, opts model.ChannelSearchOpts) (int64, *model.AppError)
        + GetAllPrivateTeams() ([]*model.Team, *model.AppError)
        + GetAllPublicTeams() ([]*model.Team, *model.AppError)
        + GetAllRemoteClusters(filter model.RemoteClusterQueryFilter) ([]*model.RemoteCluster, *model.AppError)
        + GetAllRoles() ([]*model.Role, *model.AppError)
        + GetAllTeams() ([]*model.Team, *model.AppError)
        + GetAllTeamsPage(offset int, limit int, opts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + GetAllTeamsPageWithCount(offset int, limit int, opts *model.TeamSearch) (*model.TeamsWithCount, *model.AppError)
        + GetAnalytics(name string, teamID string) (model.AnalyticsRows, *model.AppError)
        + GetAppliedSchemaMigrations() ([]model.AppliedMigration, *model.AppError)
        + GetAudits(rctx request.CTX, userID string, limit int) (model.Audits, *model.AppError)
        + GetAuditsPage(rctx request.CTX, userID string, page int, perPage int) (model.Audits, *model.AppError)
        + GetAuthorizationCode(c request.CTX, w http.ResponseWriter, r *http.Request, service string, props <font color=blue>map</font>[string]string, loginHint string) (string, *model.AppError)
        + GetAuthorizedAppsForUser(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetBrandImage(rctx request.CTX) ([]byte, *model.AppError)
        + GetBulkReactionsForPosts(postIDs []string) (<font color=blue>map</font>[string][]*model.Reaction, *model.AppError)
        + GetChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        + GetChannelByName(c request.CTX, channelName string, teamID string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(c request.CTX, channelName string, teamName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelCounts(c request.CTX, teamID string, userID string) (*model.ChannelCounts, *model.AppError)
        + GetChannelFileCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelGuestCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMemberCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelMembersByIds(c request.CTX, channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(c request.CTX, teamID string, userID string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUserWithPagination(c request.CTX, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + GetChannelMembersPage(c request.CTX, channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersTimezones(c request.CTX, channelID string) ([]string, *model.AppError)
        + GetChannelMembersWithTeamDataForUserWithPagination(c request.CTX, userID string, page int, perPage int) (model.ChannelMembersWithTeamData, *model.AppError)
        + GetChannelPinnedPostCount(c request.CTX, channelID string) (int64, *model.AppError)
        + GetChannelPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForChannelList, *model.AppError)
        + GetChannelUnread(c request.CTX, channelID string, userID string) (*model.ChannelUnread, *model.AppError)
        + GetChannels(c request.CTX, channelIDs []string) ([]*model.Channel, *model.AppError)
        + GetChannelsByNames(c request.CTX, channelNames []string, teamID string) ([]*model.Channel, *model.AppError)
        + GetChannelsForRetentionPolicy(policyID string, offset int, limit int) (*model.ChannelsWithCount, *model.AppError)
        + GetChannelsForScheme(scheme *model.Scheme, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetChannelsForSchemePage(scheme *model.Scheme, page int, perPage int) (model.ChannelList, *model.AppError)
        + GetChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        + GetChannelsForUser(c request.CTX, userID string, includeDeleted bool, lastDeleteAt int, pageSize int, fromChannelID string) (model.ChannelList, *model.AppError)
        + GetChannelsMemberCount(c request.CTX, channelIDs []string) (<font color=blue>map</font>[string]int64, *model.AppError)
        + GetChannelsUserNotIn(c request.CTX, teamID string, userID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetCloudSession(token string) (*model.Session, *model.AppError)
        + GetClusterId() string
        + GetClusterStatus(rctx request.CTX) []*model.ClusterInfo
        + GetCommand(commandID string) (*model.Command, *model.AppError)
        + GetCommonTeamIDsForTwoUsers(userID string, otherUserID string) ([]string, *model.AppError)
        + GetComplianceFile(job *model.Compliance) ([]byte, *model.AppError)
        + GetComplianceReport(reportId string) (*model.Compliance, *model.AppError)
        + GetComplianceReports(page int, perPage int) (model.Compliances, *model.AppError)
        + GetCookieDomain() string
        + GetCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + GetDeletedChannels(c request.CTX, teamID string, offset int, limit int, userID string) (model.ChannelList, *model.AppError)
        + GetDraft(userID string, channelID string, rootID string) (*model.Draft, *model.AppError)
        + GetDraftsForUser(rctx request.CTX, userID string, teamID string) ([]*model.Draft, *model.AppError)
        + GetEditHistoryForPost(postID string) ([]*model.Post, *model.AppError)
        + GetEmoji(c request.CTX, emojiId string) (*model.Emoji, *model.AppError)
        + GetEmojiByName(c request.CTX, emojiName string) (*model.Emoji, *model.AppError)
        + GetEmojiImage(c request.CTX, emojiId string) ([]byte, string, *model.AppError)
        + GetEmojiList(c request.CTX, page int, perPage int, sort string) ([]*model.Emoji, *model.AppError)
        + GetFile(rctx request.CTX, fileID string) ([]byte, *model.AppError)
        + GetFileInfo(rctx request.CTX, fileID string) (*model.FileInfo, *model.AppError)
        + GetFileInfos(rctx request.CTX, page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFileInfosForPostWithMigration(rctx request.CTX, postID string, includeDeleted bool) ([]*model.FileInfo, *model.AppError)
        + GetFlaggedPosts(userID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForChannel(userID string, channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetFlaggedPostsForTeam(userID string, teamID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetGlobalRetentionPolicy() (*model.GlobalRetentionPolicy, *model.AppError)
        + GetGroup(id string, opts *model.GetGroupOpts, viewRestrictions *model.ViewUsersRestrictions) (*model.Group, *model.AppError)
        + GetGroupByName(name string, opts model.GroupSearchOpts) (*model.Group, *model.AppError)
        + GetGroupByRemoteID(remoteID string, groupSource model.GroupSource) (*model.Group, *model.AppError)
        + GetGroupChannel(c request.CTX, userIDs []string) (*model.Channel, *model.AppError)
        + GetGroupMemberCount(groupID string, viewRestrictions *model.ViewUsersRestrictions) (int64, *model.AppError)
        + GetGroupMemberUsers(groupID string) ([]*model.User, *model.AppError)
        + GetGroupMemberUsersPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, int, *model.AppError)
        + GetGroupMemberUsersSortedPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions, teammateNameDisplay string) ([]*model.User, int, *model.AppError)
        + GetGroupMessageMembersCommonTeams(c request.CTX, channelID string) ([]*model.Team, *model.AppError)
        + GetGroupSyncable(groupID string, syncableID string, syncableType model.GroupSyncableType) (*model.GroupSyncable, *model.AppError)
        + GetGroupSyncables(groupID string, syncableType model.GroupSyncableType) ([]*model.GroupSyncable, *model.AppError)
        + GetGroups(page int, perPage int, opts model.GroupSearchOpts, viewRestrictions *model.ViewUsersRestrictions) ([]*model.Group, *model.AppError)
        + GetGroupsAssociatedToChannelsByTeam(teamID string, opts model.GroupSearchOpts) (<font color=blue>map</font>[string][]*model.GroupWithSchemeAdmin, *model.AppError)
        + GetGroupsByChannel(channelID string, opts model.GroupSearchOpts) ([]*model.GroupWithSchemeAdmin, int, *model.AppError)
        + GetGroupsByIDs(groupIDs []string) ([]*model.Group, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsByUserId(userID string) ([]*model.Group, *model.AppError)
        + GetHubForUserId(userID string) *platform.Hub
        + GetIncomingWebhook(hookID string) (*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPage(page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetIncomingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.IncomingWebhook, *model.AppError)
        + GetJob(c request.CTX, id string) (*model.Job, *model.AppError)
        + GetJobsByType(c request.CTX, jobType string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypePage(c request.CTX, jobType string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetJobsByTypes(c request.CTX, jobTypes []string, offset int, limit int) ([]*model.Job, *model.AppError)
        + GetJobsByTypesPage(c request.CTX, jobType []string, page int, perPage int) ([]*model.Job, *model.AppError)
        + GetLatestTermsOfService() (*model.TermsOfService, *model.AppError)
        + GetLatestVersion(rctx request.CTX, latestVersionUrl string) (*model.GithubReleaseInfo, *model.AppError)
        + GetLogs(rctx request.CTX, page int, perPage int) ([]string, *model.AppError)
        + GetLogsSkipSend(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + GetMemberCountsByGroup(rctx request.CTX, channelID string, includeTimezones bool) ([]*model.ChannelMemberCountByGroup, *model.AppError)
        + GetMessageForNotification(post *model.Post, teamName string, siteUrl string, translateFunc i18n.TranslateFunc) string
        + GetMultipleEmojiByName(c request.CTX, names []string) ([]*model.Emoji, *model.AppError)
        + GetNewUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetNextPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetNotificationNameFormat(user *model.User) string
        + GetNumberOfChannelsOnTeam(c request.CTX, teamID string) (int, *model.AppError)
        + GetOAuthAccessTokenForCodeFlow(c request.CTX, clientId string, grantType string, redirectURI string, code string, secret string, refreshToken string) (*model.AccessResponse, *model.AppError)
        + GetOAuthAccessTokenForImplicitFlow(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (*model.Session, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + GetOAuthApps(page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthAppsByCreator(userID string, page int, perPage int) ([]*model.OAuthApp, *model.AppError)
        + GetOAuthCodeRedirect(userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthImplicitRedirect(c request.CTX, userID string, authRequest *model.AuthorizeRequest) (string, *model.AppError)
        + GetOAuthLoginEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, action string, redirectTo string, loginHint string, isMobile bool, desktopToken string) (string, *model.AppError)
        + GetOAuthSignupEndpoint(c request.CTX, w http.ResponseWriter, r *http.Request, service string, teamID string, desktopToken string) (string, *model.AppError)
        + GetOAuthStateToken(token string) (*model.Token, *model.AppError)
        + GetOnboarding() (*model.System, *model.AppError)
        + GetOpenGraphMetadata(requestURL string) ([]byte, error)
        + GetOrCreateDirectChannel(c request.CTX, userID string, otherUserID string, channelOptions ...model.ChannelOption) (*model.Channel, *model.AppError)
        + GetOrCreateTrueUpReviewStatus() (*model.TrueUpReviewStatus, *model.AppError)
        + GetOutgoingWebhook(hookID string) (*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForChannelPageByUser(channelID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPage(teamID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksForTeamPageByUser(teamID string, userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPage(page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetOutgoingWebhooksPageByUser(userID string, page int, perPage int) ([]*model.OutgoingWebhook, *model.AppError)
        + GetPasswordRecoveryToken(token string) (*model.Token, *model.AppError)
        + GetPermalinkPost(c request.CTX, postID string, userID string) (*model.PostList, *model.AppError)
        + GetPinnedPosts(c request.CTX, channelID string) (*model.PostList, *model.AppError)
        + GetPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        + GetPlugins() (*model.PluginsResponse, *model.AppError)
        + GetPostAfterTime(channelID string, time int64, collapsedThreads bool) (*model.Post, *model.AppError)
        + GetPostIdAfterTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIdBeforeTime(channelID string, time int64, collapsedThreads bool) (string, *model.AppError)
        + GetPostIfAuthorized(c request.CTX, postID string, session *model.Session, includeDeleted bool) (*model.Post, *model.AppError)
        + GetPostInfo(c request.CTX, postID string) (*model.PostInfo, *model.AppError)
        + GetPostThread(postID string, opts model.GetPostsOptions, userID string) (*model.PostList, *model.AppError)
        + GetPosts(channelID string, offset int, limit int) (*model.PostList, *model.AppError)
        + GetPostsAfterPost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsAroundPost(before bool, options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsBeforePost(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsEtag(channelID string, collapsedThreads bool) string
        + GetPostsForChannelAroundLastUnread(c request.CTX, channelID string, userID string, limitBefore int, limitAfter int, skipFetchThreads bool, collapsedThreads bool, collapsedThreadsExtended bool) (*model.PostList, *model.AppError)
        + GetPostsPage(options model.GetPostsOptions) (*model.PostList, *model.AppError)
        + GetPostsSince(options model.GetPostsSinceOptions) (*model.PostList, *model.AppError)
        + GetPreferenceByCategoryAndNameForUser(c request.CTX, userID string, category string, preferenceName string) (*model.Preference, *model.AppError)
        + GetPreferenceByCategoryForUser(c request.CTX, userID string, category string) (model.Preferences, *model.AppError)
        + GetPreferencesForUser(c request.CTX, userID string) (model.Preferences, *model.AppError)
        + GetPrevPostIdFromPostList(postList *model.PostList, collapsedThreads bool) string
        + GetPriorityForPost(postId string) (*model.PostPriority, *model.AppError)
        + GetPriorityForPostList(list *model.PostList) (<font color=blue>map</font>[string]*model.PostPriority, *model.AppError)
        + GetPrivateChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetPublicChannelsByIdsForTeam(c request.CTX, teamID string, channelIDs []string) (model.ChannelList, *model.AppError)
        + GetPublicChannelsForTeam(c request.CTX, teamID string, offset int, limit int) (model.ChannelList, *model.AppError)
        + GetReactionsForPost(postID string) ([]*model.Reaction, *model.AppError)
        + GetRecentlyActiveUsersForTeam(teamID string) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetRecentlyActiveUsersForTeamPage(teamID string, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetRemoteCluster(remoteClusterId string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterForUser(remoteID string, userID string) (*model.RemoteCluster, *model.AppError)
        + GetRemoteClusterService() (remotecluster.RemoteClusterServiceIFace, *model.AppError)
        + GetRemoteClusterSession(token string, remoteId string) (*model.Session, *model.AppError)
        + GetRetentionPolicies(offset int, limit int) (*model.RetentionPolicyWithTeamAndChannelCountsList, *model.AppError)
        + GetRetentionPoliciesCount() (int64, *model.AppError)
        + GetRetentionPolicy(policyID string) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + GetRole(id string) (*model.Role, *model.AppError)
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetRolesByNames(names []string) ([]*model.Role, *model.AppError)
        + GetSamlCertificateStatus() *model.SamlCertificateStatus
        + GetSamlEmailToken(token string) (*model.Token, *model.AppError)
        + GetSamlMetadata(c request.CTX) (string, *model.AppError)
        + GetSamlMetadataFromIdp(idpMetadataURL string) (*model.SamlMetadataResponse, *model.AppError)
        + GetSanitizeOptions(asAdmin bool) <font color=blue>map</font>[string]bool
        + GetScheme(id string) (*model.Scheme, *model.AppError)
        + GetSchemeByName(name string) (*model.Scheme, *model.AppError)
        + GetSchemeRolesForTeam(teamID string) (string, string, string, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + GetSchemesPage(scope string, page int, perPage int) ([]*model.Scheme, *model.AppError)
        + GetSession(token string) (*model.Session, *model.AppError)
        + GetSessionById(c request.CTX, sessionID string) (*model.Session, *model.AppError)
        + GetSessions(c request.CTX, userID string) ([]*model.Session, *model.AppError)
        + GetSharedChannel(channelID string) (*model.SharedChannel, error)
        + GetSharedChannelRemote(id string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemoteByIds(channelID string, remoteID string) (*model.SharedChannelRemote, error)
        + GetSharedChannelRemotes(opts model.SharedChannelRemoteFilterOpts) ([]*model.SharedChannelRemote, error)
        + GetSharedChannelRemotesStatus(channelID string) ([]*model.SharedChannelRemoteStatus, error)
        + GetSharedChannels(page int, perPage int, opts model.SharedChannelFilterOpts) ([]*model.SharedChannel, *model.AppError)
        + GetSharedChannelsCount(opts model.SharedChannelFilterOpts) (int64, error)
        + GetSidebarCategories(c request.CTX, userID string, opts *store.SidebarCategorySearchOpts) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategoriesForTeamForUser(c request.CTX, userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + GetSidebarCategory(c request.CTX, categoryId string) (*model.SidebarCategoryWithChannels, *model.AppError)
        + GetSidebarCategoryOrder(c request.CTX, userID string, teamID string) ([]string, *model.AppError)
        + GetSinglePost(postID string, includeDeleted bool) (*model.Post, *model.AppError)
        + GetSiteURL() string
        + GetStatus(userID string) (*model.Status, *model.AppError)
        + GetStatusFromCache(userID string) *model.Status
        + GetSystemBot(rctx request.CTX) (*model.Bot, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + GetTeamByInviteId(inviteId string) (*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamIcon(team *model.Team) ([]byte, *model.AppError)
        + GetTeamIdFromQuery(query url.Values) (string, *model.AppError)
        + GetTeamMember(c request.CTX, teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembers(teamID string, offset int, limit int, teamMembersGetOptions *model.TeamMembersGetOptions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersByIds(teamID string, userIDs []string, restrictions *model.ViewUsersRestrictions) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(c request.CTX, userID string, excludeTeamID string, includeDeleted bool) ([]*model.TeamMember, *model.AppError)
        + GetTeamMembersForUserWithPagination(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamPoliciesForUser(userID string, offset int, limit int) (*model.RetentionPolicyForTeamList, *model.AppError)
        + GetTeamStats(teamID string, restrictions *model.ViewUsersRestrictions) (*model.TeamStats, *model.AppError)
        + GetTeamUnread(teamID string, userID string) (*model.TeamUnread, *model.AppError)
        + GetTeams(teamIDs []string) ([]*model.Team, *model.AppError)
        + GetTeamsForRetentionPolicy(policyID string, offset int, limit int) (*model.TeamsWithCount, *model.AppError)
        + GetTeamsForScheme(scheme *model.Scheme, offset int, limit int) ([]*model.Team, *model.AppError)
        + GetTeamsForSchemePage(scheme *model.Scheme, page int, perPage int) ([]*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + GetTeamsUnreadForUser(excludeTeamId string, userID string, includeCollapsedThreads bool) ([]*model.TeamUnread, *model.AppError)
        + GetTeamsUsage() (*model.TeamsUsage, *model.AppError)
        + GetTermsOfService(id string) (*model.TermsOfService, *model.AppError)
        + GetThreadForUser(threadMembership *model.ThreadMembership, extended bool) (*model.ThreadResponse, *model.AppError)
        + GetThreadMembershipForUser(userId string, threadId string) (*model.ThreadMembership, *model.AppError)
        + GetThreadMembershipsForUser(userID string, teamID string) ([]*model.ThreadMembership, error)
        + GetThreadsForUser(userID string, teamID string, options model.GetUserThreadsOpts) (*model.Threads, *model.AppError)
        + GetTokenById(token string) (*model.Token, *model.AppError)
        + GetTrueUpProfile() (<font color=blue>map</font>[string]any, error)
        + GetUploadSession(c request.CTX, uploadId string) (*model.UploadSession, *model.AppError)
        + GetUploadSessionsForUser(userID string) ([]*model.UploadSession, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUserAccessToken(tokenID string, sanitize bool) (*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokens(page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserAccessTokensForUser(userID string, page int, perPage int) ([]*model.UserAccessToken, *model.AppError)
        + GetUserByAuth(authData *string, authService string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUserByUsername(username string) (*model.User, *model.AppError)
        + GetUserCountForReport(filter *model.UserReportOptions) (*int64, *model.AppError)
        + GetUserForLogin(c request.CTX, id string, loginId string) (*model.User, *model.AppError)
        + GetUserLimits() (*model.UserLimits, *model.AppError)
        + GetUserTermsOfService(userID string) (*model.UserTermsOfService, *model.AppError)
        + GetUsers(userIDs []string) ([]*model.User, *model.AppError)
        + GetUsersByGroupChannelIds(c request.CTX, channelIDs []string, asAdmin bool) (<font color=blue>map</font>[string][]*model.User, *model.AppError)
        + GetUsersByIds(userIDs []string, options *store.UserGetByIdsOpts) ([]*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersEtag(restrictionsHash string) string
        + GetUsersForReporting(filter *model.UserReportOptions) ([]*model.UserReport, *model.AppError)
        + GetUsersFromProfiles(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannel(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByAdmin(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelByStatus(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInChannelMap(options *model.UserGetOptions, asAdmin bool) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersInChannelPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByAdmin(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInChannelPageByStatus(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersInTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersInTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersNotInChannel(teamID string, channelID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInChannelMap(teamID string, channelID string, groupConstrained bool, offset int, limit int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) (<font color=blue>map</font>[string]*model.User, *model.AppError)
        + GetUsersNotInChannelPage(teamID string, channelID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInGroupPage(groupID string, page int, perPage int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeam(teamID string, groupConstrained bool, offset int, limit int, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersNotInTeamEtag(teamID string, restrictionsHash string) string
        + GetUsersNotInTeamPage(teamID string, groupConstrained bool, page int, perPage int, asAdmin bool, viewRestrictions *model.ViewUsersRestrictions) ([]*model.User, *model.AppError)
        + GetUsersPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetUsersWithInvalidEmails(page int, perPage int) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeam(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUsersWithoutTeamPage(options *model.UserGetOptions, asAdmin bool) ([]*model.User, *model.AppError)
        + GetVerifyEmailToken(token string) (*model.Token, *model.AppError)
        + GetViewUsersRestrictions(c request.CTX, userID string) (*model.ViewUsersRestrictions, *model.AppError)
        + HTTPService() httpservice.HTTPService
        + HandleCommandResponse(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.CommandResponse, *model.AppError)
        + HandleCommandResponsePost(c request.CTX, command *model.Command, args *model.CommandArgs, response *model.CommandResponse, builtIn bool) (*model.Post, *model.AppError)
        + HandleCommandWebhook(c request.CTX, hookID string, response *model.CommandResponse) *model.AppError
        + HandleImages(rctx request.CTX, previewPathList []string, thumbnailPathList []string, fileData [][]byte) 
        + HandleIncomingWebhook(c request.CTX, hookID string, req *model.IncomingWebhookRequest) *model.AppError
        + HandleMessageExportConfig(cfg *model.Config, appCfg *model.Config) 
        + HasPermissionTo(askingUserId string, permission *model.Permission) bool
        + HasPermissionToChannel(c request.CTX, askingUserId string, channelID string, permission *model.Permission) bool
        + HasPermissionToChannelByPost(c request.CTX, askingUserId string, postID string, permission *model.Permission) bool
        + HasPermissionToReadChannel(c request.CTX, userID string, channel *model.Channel) bool
        + HasPermissionToTeam(c request.CTX, askingUserId string, teamID string, permission *model.Permission) bool
        + HasPermissionToUser(askingUserId string, userID string) bool
        + HasSharedChannel(channelID string) (bool, error)
        + IPFiltering() einterfaces.IPFilteringInterface
        + ImageProxy() *imageproxy.ImageProxy
        + ImageProxyAdder() <font color=blue>func</font>(string) string
        + ImageProxyRemover() <font color=blue>func</font>(string) string
        + ImportPermissions(jsonl io.Reader) error
        + InitPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        + InvalidateAllEmailInvites(c request.CTX) *model.AppError
        + InvalidateAllResendInviteEmailJobs(c request.CTX) *model.AppError
        + InvalidateCacheForUser(userID string) 
        + InvalidatePasswordRecoveryTokensForUser(userID string) *model.AppError
        + InviteGuestsToChannels(teamID string, guestsInvite *model.GuestsInvite, senderId string) *model.AppError
        + InviteGuestsToChannelsGracefully(teamID string, guestsInvite *model.GuestsInvite, senderId string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteNewUsersToTeam(emailList []string, teamID string, senderId string) *model.AppError
        + InviteNewUsersToTeamGracefully(memberInvite *model.MemberInvite, teamID string, senderId string, reminderInterval string) ([]*model.EmailInviteWithError, *model.AppError)
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + IsCRTEnabledForUser(c request.CTX, userID string) bool
        + IsConfigReadOnly() bool
        + IsFirstUserAccount() bool
        + IsLeader() bool
        + IsPasswordValid(rctx request.CTX, password string) *model.AppError
        + IsPersistentNotificationsEnabled() bool
        + IsPhase2MigrationCompleted() *model.AppError
        + IsPluginActive(pluginName string) (bool, error)
        + IsPostPriorityEnabled() bool
        + IsUserSignUpAllowed() *model.AppError
        + JoinChannel(c request.CTX, channel *model.Channel, userID string) *model.AppError
        + JoinDefaultChannels(c request.CTX, teamID string, user *model.User, shouldBeAdmin bool, userRequestorId string) *model.AppError
        + JoinUserToTeam(c request.CTX, team *model.Team, user *model.User, userRequestorId string) (*model.TeamMember, *model.AppError)
        + Ldap() einterfaces.LdapInterface
        + LeaveChannel(c request.CTX, channelID string, userID string) *model.AppError
        + LeaveTeam(c request.CTX, team *model.Team, user *model.User, requestorId string) *model.AppError
        + License() *model.License
        + LimitedClientConfig() <font color=blue>map</font>[string]string
        + ListAllCommands(teamID string, T i18n.TranslateFunc) ([]*model.Command, *model.AppError)
        + ListDirectory(path string) ([]string, *model.AppError)
        + ListDirectoryRecursively(path string) ([]string, *model.AppError)
        + ListExportDirectory(path string) ([]string, *model.AppError)
        + ListExports() ([]string, *model.AppError)
        + ListImports() ([]string, *model.AppError)
        + ListPluginKeys(pluginID string, page int, perPage int) ([]string, *model.AppError)
        + ListTeamCommands(teamID string) ([]*model.Command, *model.AppError)
        + Log() *mlog.Logger
        + LoginByOAuth(c request.CTX, service string, userData io.Reader, teamID string, tokenUser *model.User) (*model.User, *model.AppError)
        + MarkChannelsAsViewed(c request.CTX, channelIDs []string, userID string, currentSessionId string, collapsedThreadsSupported bool, isCRTEnabled bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + MaxPostSize() int
        + MessageExport() einterfaces.MessageExportInterface
        + Metrics() einterfaces.MetricsInterface
        + MigrateIdLDAP(c request.CTX, toAttribute string) *model.AppError
        + MoveCommand(team *model.Team, command *model.Command) *model.AppError
        + MoveFile(oldPath string, newPath string) *model.AppError
        + MoveThread(c request.CTX, postID string, sourceChannelID string, channelID string, user *model.User) *model.AppError
        + NewPluginAPI(c request.CTX, manifest *model.Manifest) plugin.API
        + Notification() einterfaces.NotificationInterface
        + NotificationsLog() *mlog.Logger
        + NotifySelfHostedSignupProgress(progress string, userId string) 
        + NotifySharedChannelUserUpdate(user *model.User) 
        + OpenInteractiveDialog(request model.OpenDialogRequest) *model.AppError
        + OriginChecker() <font color=blue>func</font>(*http.Request) bool
        + OutgoingOAuthConnections() einterfaces.OutgoingOAuthConnectionInterface
        + PatchChannel(c request.CTX, channel *model.Channel, patch *model.ChannelPatch, userID string) (*model.Channel, *model.AppError)
        + PatchChannelMembersNotifyProps(c request.CTX, members []*model.ChannelMemberIdentifier, notifyProps <font color=blue>map</font>[string]string) ([]*model.ChannelMember, *model.AppError)
        + PatchPost(c request.CTX, postID string, patch *model.PostPatch) (*model.Post, *model.AppError)
        + PatchRetentionPolicy(patch *model.RetentionPolicyWithTeamAndChannelIDs) (*model.RetentionPolicyWithTeamAndChannelCounts, *model.AppError)
        + PatchRole(role *model.Role, patch *model.RolePatch) (*model.Role, *model.AppError)
        + PatchScheme(scheme *model.Scheme, patch *model.SchemePatch) (*model.Scheme, *model.AppError)
        + PatchTeam(teamID string, patch *model.TeamPatch) (*model.Team, *model.AppError)
        + PatchUser(c request.CTX, userID string, patch *model.UserPatch, asAdmin bool) (*model.User, *model.AppError)
        + PermanentDeleteAllUsers(c request.CTX) *model.AppError
        + PermanentDeleteChannel(c request.CTX, channel *model.Channel) *model.AppError
        + PermanentDeleteTeam(c request.CTX, team *model.Team) *model.AppError
        + PermanentDeleteTeamId(c request.CTX, teamID string) *model.AppError
        + PermanentDeleteUser(c request.CTX, user *model.User) *model.AppError
        + PostActionCookieSecret() []byte
        + PostAddToChannelMessage(c request.CTX, user *model.User, addedUser *model.User, channel *model.Channel, postRootId string) *model.AppError
        + PostPatchWithProxyRemovedFromImageURLs(patch *model.PostPatch) *model.PostPatch
        + PostUpdateChannelDisplayNameMessage(c request.CTX, userID string, channel *model.Channel, oldChannelDisplayName string, newChannelDisplayName string) *model.AppError
        + PostUpdateChannelHeaderMessage(c request.CTX, userID string, channel *model.Channel, oldChannelHeader string, newChannelHeader string) *model.AppError
        + PostUpdateChannelPurposeMessage(c request.CTX, userID string, channel *model.Channel, oldChannelPurpose string, newChannelPurpose string) *model.AppError
        + PostWithProxyAddedToImageURLs(post *model.Post) *model.Post
        + PostWithProxyRemovedFromImageURLs(post *model.Post) *model.Post
        + PreparePostForClient(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostForClientWithEmbedsAndImages(c request.CTX, originalPost *model.Post, isNewPost bool, isEditPost bool, includePriority bool) *model.Post
        + PreparePostListForClient(c request.CTX, originalList *model.PostList) *model.PostList
        + ProcessSlackText(text string) string
        + Publish(message *model.WebSocketEvent) 
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + PurgeBleveIndexes(c request.CTX) *model.AppError
        + PurgeElasticsearchIndexes(c request.CTX) *model.AppError
        + QueryLogs(rctx request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + RecycleDatabaseConnection(rctx request.CTX) 
        + RegenCommandToken(cmd *model.Command) (*model.Command, *model.AppError)
        + RegenOutgoingWebhookToken(hook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + RegenerateOAuthAppSecret(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + RegenerateTeamInviteId(teamID string) (*model.Team, *model.AppError)
        + RegisterPluginCommand(pluginID string, command *model.Command) error
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + ReloadConfig() error
        + RemoveAllDeactivatedMembersFromChannel(c request.CTX, channel *model.Channel) *model.AppError
        + RemoveChannelsFromRetentionPolicy(policyID string, channelIDs []string) *model.AppError
        + RemoveCustomStatus(c request.CTX, userID string) *model.AppError
        + RemoveDirectory(path string) *model.AppError
        + RemoveExportFile(path string) *model.AppError
        + RemoveFile(path string) *model.AppError
        + RemoveLdapPrivateCertificate() *model.AppError
        + RemoveLdapPublicCertificate() *model.AppError
        + RemoveNotifications(c request.CTX, post *model.Post, channel *model.Channel) error
        + RemoveRecentCustomStatus(c request.CTX, userID string, status *model.CustomStatus) *model.AppError
        + RemoveSamlIdpCertificate() *model.AppError
        + RemoveSamlPrivateCertificate() *model.AppError
        + RemoveSamlPublicCertificate() *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + RemoveTeamsFromRetentionPolicy(policyID string, teamIDs []string) *model.AppError
        + RemoveUserFromChannel(c request.CTX, userIDToRemove string, removerUserId string, channel *model.Channel) *model.AppError
        + RemoveUserFromTeam(c request.CTX, teamID string, userID string, requestorId string) *model.AppError
        + RemoveUsersFromChannelNotMemberOfTeam(c request.CTX, remover *model.User, channel *model.Channel, team *model.Team) *model.AppError
        + ResetPasswordFromToken(c request.CTX, userSuppliedTokenString string, newPassword string) *model.AppError
        + ResetPermissionsSystem() *model.AppError
        + ResetSamlAuthDataToEmail(includeDeleted bool, dryRun bool, userIDs []string) (int, *model.AppError)
        + RestoreChannel(c request.CTX, channel *model.Channel, userID string) (*model.Channel, *model.AppError)
        + RestoreGroup(groupID string) (*model.Group, *model.AppError)
        + RestoreTeam(teamID string) *model.AppError
        + RestrictUsersGetByPermissions(c request.CTX, userID string, options *model.UserGetOptions) (*model.UserGetOptions, *model.AppError)
        + RestrictUsersSearchByPermissions(c request.CTX, userID string, options *model.UserSearchOptions) (*model.UserSearchOptions, *model.AppError)
        + ReturnSessionToPool(session *model.Session) 
        + RevokeAccessToken(c request.CTX, token string) *model.AppError
        + RevokeAllSessions(c request.CTX, userID string) *model.AppError
        + RevokeSession(c request.CTX, session *model.Session) *model.AppError
        + RevokeSessionById(c request.CTX, sessionID string) *model.AppError
        + RevokeSessionsForDeviceId(c request.CTX, userID string, deviceID string, currentSessionId string) *model.AppError
        + RevokeUserAccessToken(c request.CTX, token *model.UserAccessToken) *model.AppError
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + Saml() einterfaces.SamlInterface
        + SanitizePostListMetadataForUser(c request.CTX, postList *model.PostList, userID string) (*model.PostList, *model.AppError)
        + SanitizePostMetadataForUser(c request.CTX, post *model.Post, userID string) (*model.Post, *model.AppError)
        + SanitizeProfile(user *model.User, asAdmin bool) 
        + SanitizeTeam(session model.Session, team *model.Team) *model.Team
        + SanitizeTeams(session model.Session, teams []*model.Team) []*model.Team
        + SaveAcknowledgementForPost(c request.CTX, postID string, userID string) (*model.PostAcknowledgement, *model.AppError)
        + SaveAdminNotification(userId string, notifyData *model.NotifyAdminToUpgradeRequest) *model.AppError
        + SaveAdminNotifyData(data *model.NotifyAdminData) (*model.NotifyAdminData, *model.AppError)
        + SaveBrandImage(rctx request.CTX, imageData *multipart.FileHeader) *model.AppError
        + SaveComplianceReport(rctx request.CTX, job *model.Compliance) (*model.Compliance, *model.AppError)
        + SaveReactionForPost(c request.CTX, reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + SaveReportChunk(format string, prefix string, count int, reportData []model.ReportableObject) *model.AppError
        + SaveSharedChannelRemote(remote *model.SharedChannelRemote) (*model.SharedChannelRemote, error)
        + SaveUserTermsOfService(userID string, termsOfServiceId string, accepted bool) *model.AppError
        + SchemesIterator(scope string, batchSize int) <font color=blue>func</font>() []*model.Scheme
        + SearchArchivedChannels(c request.CTX, teamID string, term string, userID string) (model.ChannelList, *model.AppError)
        + SearchChannels(c request.CTX, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsForUser(c request.CTX, userID string, teamID string, term string) (model.ChannelList, *model.AppError)
        + SearchChannelsUserNotIn(c request.CTX, teamID string, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchEmoji(c request.CTX, name string, prefixOnly bool, limit int) ([]*model.Emoji, *model.AppError)
        + SearchEngine() *searchengine.Broker
        + SearchFilesInTeamForUser(c request.CTX, terms string, userId string, teamId string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.FileInfoList, *model.AppError)
        + SearchGroupChannels(c request.CTX, userID string, term string) (model.ChannelList, *model.AppError)
        + SearchPostsForUser(c request.CTX, terms string, userID string, teamID string, isOrSearch bool, includeDeletedChannels bool, timeZoneOffset int, page int, perPage int) (*model.PostSearchResults, *model.AppError)
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) (*model.PostList, *model.AppError)
        + SearchPrivateTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchPublicTeams(searchOpts *model.TeamSearch) ([]*model.Team, *model.AppError)
        + SearchUserAccessTokens(term string) ([]*model.UserAccessToken, *model.AppError)
        + SearchUsers(rctx request.CTX, props *model.UserSearch, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInChannel(channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersInTeam(rctx request.CTX, teamID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInChannel(teamID string, channelID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInGroup(groupID string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersNotInTeam(notInTeamId string, term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SearchUsersWithoutTeam(term string, options *model.UserSearchOptions) ([]*model.User, *model.AppError)
        + SendAckToPushProxy(ack *model.PushNotificationAck) error
        + SendAutoResponse(rctx request.CTX, channel *model.Channel, receiver *model.User, post *model.Post) (bool, *model.AppError)
        + SendAutoResponseIfNecessary(rctx request.CTX, channel *model.Channel, sender *model.User, post *model.Post) (bool, *model.AppError)
        + SendDelinquencyEmail(emailToSend model.DelinquencyEmail) *model.AppError
        + SendEmailVerification(user *model.User, newEmail string, redirect string) *model.AppError
        + SendEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + SendIPFiltersChangedEmail(c request.CTX, userID string) error
        + SendNotifications(c request.CTX, post *model.Post, team *model.Team, channel *model.Channel, sender *model.User, parentPostList *model.PostList, setOnline bool) ([]string, error)
        + SendNotifyAdminPosts(c request.CTX, workspaceName string, currentSKU string, trial bool) *model.AppError
        + SendPasswordReset(email string, siteURL string) (bool, *model.AppError)
        + SendPaymentFailedEmail(failedPayment *model.FailedPayment) *model.AppError
        + SendPersistentNotifications() error
        + SendReportToUser(rctx request.CTX, job *model.Job, format string) *model.AppError
        + SendTestPushNotification(deviceID string) string
        + SendUpgradeConfirmationEmail(isYearly bool) *model.AppError
        + ServeInterPluginRequest(w http.ResponseWriter, r *http.Request, sourcePluginId string, destinationPluginId string) 
        + SessionHasPermissionTo(session model.Session, permission *model.Permission) bool
        + SessionHasPermissionToAny(session model.Session, permissions []*model.Permission) bool
        + SessionHasPermissionToCategory(c request.CTX, session model.Session, userID string, teamID string, categoryId string) bool
        + SessionHasPermissionToChannel(c request.CTX, session model.Session, channelID string, permission *model.Permission) bool
        + SessionHasPermissionToChannelByPost(session model.Session, postID string, permission *model.Permission) bool
        + SessionHasPermissionToCreateJob(session model.Session, job *model.Job) (bool, *model.Permission)
        + SessionHasPermissionToGroup(session model.Session, groupID string, permission *model.Permission) bool
        + SessionHasPermissionToReadJob(session model.Session, jobType string) (bool, *model.Permission)
        + SessionHasPermissionToTeam(session model.Session, teamID string, permission *model.Permission) bool
        + SessionHasPermissionToUser(session model.Session, userID string) bool
        + SessionHasPermissionToUserOrBot(session model.Session, userID string) bool
        + SetActiveChannel(c request.CTX, userID string, channelID string) *model.AppError
        + SetAutoResponderStatus(rctx request.CTX, user *model.User, oldNotifyProps model.StringMap) 
        + SetChannels(ch *Channels) 
        + SetCustomStatus(c request.CTX, userID string, cs *model.CustomStatus) *model.AppError
        + SetDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + SetFileSearchableContent(rctx request.CTX, fileID string, data string) *model.AppError
        + SetPhase2PermissionsMigrationStatus(isComplete bool) error
        + SetPluginKey(pluginID string, key string, value []byte) *model.AppError
        + SetPluginKeyWithExpiry(pluginID string, key string, value []byte, expireInSeconds int64) *model.AppError
        + SetPluginKeyWithOptions(pluginID string, key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + SetPostReminder(postID string, userID string, targetTime int64) *model.AppError
        + SetProfileImage(c request.CTX, userID string, imageData *multipart.FileHeader) *model.AppError
        + SetProfileImageFromFile(c request.CTX, userID string, file io.Reader) *model.AppError
        + SetProfileImageFromMultiPartFile(c request.CTX, userID string, file multipart.File) *model.AppError
        + SetRemoteClusterLastPingAt(remoteClusterId string) *model.AppError
        + SetSamlIdpCertificateFromMetadata(data []byte) *model.AppError
        + SetSearchEngine(se *searchengine.Broker) 
        + SetServer(srv *Server) 
        + SetStatusAwayIfNeeded(userID string, manual bool) 
        + SetStatusDoNotDisturb(userID string) 
        + SetStatusOffline(userID string, manual bool) 
        + SetStatusOnline(userID string, manual bool) 
        + SetStatusOutOfOffice(userID string) 
        + SetTeamIcon(teamID string, imageData *multipart.FileHeader) *model.AppError
        + SetTeamIconFromFile(team *model.Team, file io.Reader) *model.AppError
        + SetTeamIconFromMultiPartFile(teamID string, file multipart.File) *model.AppError
        + ShareChannel(c request.CTX, sc *model.SharedChannel) (*model.SharedChannel, error)
        + ShouldSendPushNotification(user *model.User, channelNotifyProps model.StringMap, wasMentioned bool, status *model.Status, post *model.Post, isGM bool) bool
        + SlackImport(c request.CTX, fileData multipart.File, fileSize int64, teamID string) (*model.AppError, *bytes.Buffer)
        + SoftDeleteTeam(teamID string) *model.AppError
        + Srv() *Server
        + StartUsersBatchExport(rctx request.CTX, dateRange string, startAt int64, endAt int64) *model.AppError
        + SubmitInteractiveDialog(c request.CTX, request model.SubmitDialogRequest) (*model.SubmitDialogResponse, *model.AppError)
        + SwitchEmailToLdap(c request.CTX, email string, password string, code string, ldapLoginId string, ldapPassword string) (string, *model.AppError)
        + SwitchEmailToOAuth(c request.CTX, w http.ResponseWriter, r *http.Request, email string, password string, code string, service string) (string, *model.AppError)
        + SwitchLdapToEmail(c request.CTX, ldapPassword string, code string, email string, newPassword string) (string, *model.AppError)
        + SwitchOAuthToEmail(c request.CTX, email string, password string, requesterId string) (string, *model.AppError)
        + TeamMembersToRemove(teamID *string) ([]*model.TeamMember, *model.AppError)
        + TelemetryId() string
        + TestElasticsearch(rctx request.CTX, cfg *model.Config) *model.AppError
        + TestEmail(rctx request.CTX, userID string, cfg *model.Config) *model.AppError
        + TestFileStoreConnection() *model.AppError
        + TestFileStoreConnectionWithConfig(cfg *model.FileSettings) *model.AppError
        + TestLdap(rctx request.CTX) *model.AppError
        + TestSiteURL(rctx request.CTX, siteURL string) *model.AppError
        + Timezones() *timezones.Timezones
        + ToggleMuteChannel(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + TotalWebsocketConnections() int
        + TriggerWebhook(c request.CTX, payload *model.OutgoingWebhookPayload, hook *model.OutgoingWebhook, post *model.Post, channel *model.Channel) 
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + UnregisterPluginCommand(pluginID string, teamID string, trigger string) 
        + UnregisterPluginForSharedChannels(pluginID string) error
        + UnshareChannel(channelID string) (bool, error)
        + UpdateActive(c request.CTX, user *model.User, active bool) (*model.User, *model.AppError)
        + UpdateChannelMemberNotifyProps(c request.CTX, data <font color=blue>map</font>[string]string, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberRoles(c request.CTX, channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberSchemeRoles(c request.CTX, channelID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.ChannelMember, *model.AppError)
        + UpdateChannelPrivacy(c request.CTX, oldChannel *model.Channel, user *model.User) (*model.Channel, *model.AppError)
        + UpdateCommand(oldCmd *model.Command, updatedCmd *model.Command) (*model.Command, *model.AppError)
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + UpdateDefaultProfileImage(c request.CTX, user *model.User) *model.AppError
        + UpdateEphemeralPost(c request.CTX, userID string, post *model.Post) *model.Post
        + UpdateExpiredDNDStatuses() ([]*model.Status, error)
        + UpdateGroup(group *model.Group) (*model.Group, *model.AppError)
        + UpdateGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UpdateHashedPassword(user *model.User, newHashedPassword string) *model.AppError
        + UpdateHashedPasswordByUserId(userID string, newHashedPassword string) *model.AppError
        + UpdateIncomingWebhook(oldHook *model.IncomingWebhook, updatedHook *model.IncomingWebhook) (*model.IncomingWebhook, *model.AppError)
        + UpdateMfa(c request.CTX, activate bool, userID string, token string) *model.AppError
        + UpdateMobileAppBadge(userID string) 
        + UpdateOAuthApp(oldApp *model.OAuthApp, updatedApp *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthUserAttrs(c request.CTX, userData io.Reader, user *model.User, provider einterfaces.OAuthProvider, service string, tokenUser *model.User) *model.AppError
        + UpdateOutgoingWebhook(c request.CTX, oldHook *model.OutgoingWebhook, updatedHook *model.OutgoingWebhook) (*model.OutgoingWebhook, *model.AppError)
        + UpdatePassword(rctx request.CTX, user *model.User, newPassword string) *model.AppError
        + UpdatePasswordAsUser(c request.CTX, userID string, currentPassword string, newPassword string) *model.AppError
        + UpdatePasswordByUserIdSendEmail(c request.CTX, userID string, newPassword string, method string) *model.AppError
        + UpdatePasswordSendEmail(c request.CTX, user *model.User, newPassword string, method string) *model.AppError
        + UpdatePost(c request.CTX, receivedUpdatedPost *model.Post, safeUpdate bool) (*model.Post, *model.AppError)
        + UpdatePreferences(c request.CTX, userID string, preferences model.Preferences) *model.AppError
        + UpdateRemoteCluster(rc *model.RemoteCluster) (*model.RemoteCluster, *model.AppError)
        + UpdateRemoteClusterTopics(remoteClusterId string, topics string) (*model.RemoteCluster, *model.AppError)
        + UpdateRole(role *model.Role) (*model.Role, *model.AppError)
        + UpdateScheme(scheme *model.Scheme) (*model.Scheme, *model.AppError)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannelRemoteCursor(id string, cursor model.GetPostsSinceForSyncCursor) error
        + UpdateSidebarCategories(c request.CTX, userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + UpdateSidebarCategoryOrder(c request.CTX, userID string, teamID string, categoryOrder []string) *model.AppError
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + UpdateTeamMemberRoles(c request.CTX, teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + UpdateTeamMemberSchemeRoles(c request.CTX, teamID string, userID string, isSchemeGuest bool, isSchemeUser bool, isSchemeAdmin bool) (*model.TeamMember, *model.AppError)
        + UpdateTeamPrivacy(teamID string, teamType string, allowOpenInvite bool) *model.AppError
        + UpdateTeamScheme(team *model.Team) (*model.Team, *model.AppError)
        + UpdateThreadFollowForUser(userID string, teamID string, threadID string, state bool) *model.AppError
        + UpdateThreadFollowForUserFromChannelAdd(c request.CTX, userID string, teamID string, threadID string) *model.AppError
        + UpdateThreadReadForUser(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, timestamp int64) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadReadForUserByPost(c request.CTX, currentSessionId string, userID string, teamID string, threadID string, postID string) (*model.ThreadResponse, *model.AppError)
        + UpdateThreadsReadForUser(userID string, teamID string) *model.AppError
        + UpdateUser(c request.CTX, user *model.User, sendNotifications bool) (*model.User, *model.AppError)
        + UpdateUserActive(c request.CTX, userID string, active bool) *model.AppError
        + UpdateUserAsUser(c request.CTX, user *model.User, asAdmin bool) (*model.User, *model.AppError)
        + UpdateUserAuth(c request.CTX, userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUserRoles(c request.CTX, userID string, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UpdateUserRolesWithUser(c request.CTX, user *model.User, newRoles string, sendWebSocketEvent bool) (*model.User, *model.AppError)
        + UploadData(c request.CTX, us *model.UploadSession, rd io.Reader) (*model.FileInfo, *model.AppError)
        + UploadFileForUserAndTeam(c request.CTX, data []byte, channelID string, filename string, rawUserId string, rawTeamId string) (*model.FileInfo, *model.AppError)
        + UpsertDraft(c request.CTX, draft *model.Draft, connectionID string) (*model.Draft, *model.AppError)
        + UpsertGroupMember(groupID string, userID string) (*model.GroupMember, *model.AppError)
        + UpsertGroupMembers(groupID string, userIDs []string) ([]*model.GroupMember, *model.AppError)
        + UpsertGroupSyncable(groupSyncable *model.GroupSyncable) (*model.GroupSyncable, *model.AppError)
        + UserAlreadyNotifiedOnRequiredFeature(user string, feature model.MattermostFeature) bool
        + UserCanSeeOtherUser(c request.CTX, userID string, otherUserId string) (bool, *model.AppError)
        + UserIsFirstAdmin(user *model.User) bool
        + ValidateDesktopToken(token string, expiryTime int64) (*model.User, *model.AppError)
        + VerifyEmailFromToken(c request.CTX, userSuppliedTokenString string) *model.AppError
        + VerifyUserEmail(userID string, email string) *model.AppError
        + ViewChannel(c request.CTX, view *model.ChannelView, userID string, currentSessionId string, collapsedThreadsSupported bool) (<font color=blue>map</font>[string]int64, *model.AppError)
        + WriteExportFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        + WriteFile(fr io.Reader, path string) (int64, *model.AppError)
        + WriteFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)

    }
    interface AutocompleteDynamicArgProvider  {
        + GetAutoCompleteListItems(c request.CTX, a *App, commandArgs *model.CommandArgs, arg *model.AutocompleteArg, parsed string, toBeParsed string) ([]model.AutocompleteListItem, error)

    }
    class Busy << (S,Aquamarine) >> {
        - busy int32
        - mux sync.RWMutex
        - timer *time.Timer
        - expires time.Time
        - cluster einterfaces.ClusterInterface

        - setWithoutNotify(dur time.Duration) 
        - clearWithoutNotify() 
        - notifyServerBusyChange(sbs *model.ServerBusyState) 

        + IsBusy() bool
        + Set(dur time.Duration) 
        + Clear() 
        + Expires() time.Time
        + ClusterEventChanged(sbs *model.ServerBusyState) 
        + ToJSON() ([]byte, error)

    }
    class CRTNotifiers << (S,Aquamarine) >> {
        + Desktop model.StringArray
        + Email model.StringArray
        + Push model.StringArray

        - addFollowerToNotify(user *model.User, mentions *MentionResults, channelMemberNotificationProps model.StringMap, channel *model.Channel) 

    }
    class ChannelMemberOpts << (S,Aquamarine) >> {
        + UserRequestorID string
        + PostRootID string
        + SkipTeamMemberIntegrityCheck bool

    }
    class Channels << (S,Aquamarine) >> {
        - srv *Server
        - cfgSvc configService
        - filestore filestore.FileBackend
        - exportFilestore filestore.FileBackend
        - postActionCookieSecret []byte
        - pluginCommandsLock sync.RWMutex
        - pluginCommands []*PluginCommand
        - pluginsLock sync.RWMutex
        - pluginsEnvironment *plugin.Environment
        - pluginConfigListenerID string
        - pluginClusterLeaderListenerID string
        - imageProxy *imageproxy.ImageProxy
        - cachedPostCount int64
        - cachedUserCount int64
        - cachedDBMSVersion string
        - cachedNotices model.ProductNotices
        - uploadLockMapMut sync.Mutex
        - uploadLockMap <font color=blue>map</font>[string]bool
        - imgDecoder *imaging.Decoder
        - imgEncoder *imaging.Encoder
        - dndTaskMut sync.Mutex
        - dndTask *model.ScheduledTask
        - postReminderMut sync.Mutex
        - postReminderTask *model.ScheduledTask

        + AccountMigration einterfaces.AccountMigrationInterface
        + Compliance einterfaces.ComplianceInterface
        + DataRetention einterfaces.DataRetentionInterface
        + MessageExport einterfaces.MessageExportInterface
        + Saml einterfaces.SamlInterface
        + Notification einterfaces.NotificationInterface
        + Ldap einterfaces.LdapInterface

        - ensurePostActionCookieSecret() error
        - doPluginRequest(c request.CTX, method string, rawURL string, values url.Values, body []byte) (*http.Response, *model.AppError)
        - syncPluginsActiveState() 
        - initPlugins(c request.CTX, pluginDir string, webappPluginDir string) 
        - syncPlugins() *model.AppError
        - enablePlugin(id string) *model.AppError
        - disablePlugin(id string) *model.AppError
        - getPrepackagedPlugin(pluginID string, version string) (*plugin.PrepackagedPlugin, *model.AppError)
        - getRemoteMarketplacePlugin(pluginID string, version string) (*model.BaseMarketplacePlugin, *model.AppError)
        - getBaseMarketplaceFilter() *model.MarketplacePluginFilter
        - notifyPluginEnabled(manifest *model.Manifest) error
        - getPluginsFromFolder() (<font color=blue>map</font>[string]*pluginSignaturePath, *model.AppError)
        - getPluginsFromFilePaths(fileStorePaths []string) <font color=blue>map</font>[string]*pluginSignaturePath
        - processPrepackagedPlugins(prepackagedPluginsDir string) error
        - processPrepackagedPlugin(pluginPath *pluginSignaturePath) (*plugin.PrepackagedPlugin, error)
        - pluginIsTransitionallyPrepackaged(pluginID string) bool
        - shouldPersistTransitionallyPrepackagedPlugin(availablePluginsMap <font color=blue>map</font>[string]*model.BundleInfo, p *plugin.PrepackagedPlugin) bool
        - persistTransitionallyPrepackagedPlugins() 
        - buildPrepackagedPlugin(pluginPath *pluginSignaturePath, pluginFile io.ReadSeeker, tmpDir string) (*plugin.PrepackagedPlugin, string, error)
        - getPluginStateOverride(pluginID string) (bool, bool)
        - unregisterPluginCommands(pluginID string) 
        - notifyClusterPluginEvent(event model.ClusterEvent, data model.PluginEventData) 
        - installPluginFromClusterMessage(pluginID string) 
        - removePluginFromClusterMessage(pluginID string) 
        - installPlugin(bundle io.ReadSeeker, signature io.ReadSeeker, installationStrategy pluginInstallationStrategy) (*model.Manifest, *model.AppError)
        - installPluginToFilestore(manifest *model.Manifest, bundle io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        - installPluginLocally(bundle io.ReadSeeker, installationStrategy pluginInstallationStrategy) (*model.Manifest, *model.AppError)
        - installExtractedPlugin(manifest *model.Manifest, fromPluginDir string, installationStrategy pluginInstallationStrategy) (*model.Manifest, *model.AppError)
        - removePluginLocally(id string) *model.AppError
        - removeSignature(pluginID string) *model.AppError
        - servePluginRequest(w http.ResponseWriter, r *http.Request, handler <font color=blue>func</font>(*plugin.Context, http.ResponseWriter, *http.Request) ) 
        - verifyPlugin(plugin io.ReadSeeker, signature io.ReadSeeker) *model.AppError
        - getClusterPluginStatuses() (model.PluginStatuses, *model.AppError)
        - notifyPluginStatusesChanged() error

        + Start() error
        + Stop() error
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + RunMultiHook(hookRunnerFunc <font color=blue>func</font>(plugin.Hooks) bool, hookId int) 
        + HooksForPlugin(id string) (plugin.Hooks, error)
        + AsymmetricSigningKey() *ecdsa.PrivateKey
        + PostActionCookieSecret() []byte
        + License() *model.License
        + RequestTrialLicenseWithExtraFields(requesterID string, trialRequest *model.TrialLicenseRequest) *model.AppError
        + RequestTrialLicense(requesterID string, users int, termsAccepted bool, receiveEmailsAccepted bool) *model.AppError
        + GetPluginsEnvironment() *plugin.Environment
        + SetPluginsEnvironment(pluginsEnvironment *plugin.Environment) 
        + ShutDownPlugins() 
        + IsPluginActive(pluginName string) (bool, error)
        + InstallMarketplacePlugin(request *model.InstallMarketplacePluginRequest) (*model.Manifest, *model.AppError)
        + RemovePlugin(id string) *model.AppError
        + ServePluginRequest(w http.ResponseWriter, r *http.Request) 
        + ServePluginPublicRequest(w http.ResponseWriter, r *http.Request) 
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + GetPluginStatuses() (model.PluginStatuses, *model.AppError)
        + ClientConfigHash() string
        + Publish(message *model.WebSocketEvent) 

    }
    interface CommandProvider  {
        + GetTrigger() string
        + GetCommand(a *App, T i18n.TranslateFunc) *model.Command
        + DoCommand(a *App, c request.CTX, args *model.CommandArgs, message string) *model.CommandResponse

    }
    class DriverImpl << (S,Aquamarine) >> {
        - s *Server
        - connMut sync.RWMutex
        - connMap <font color=blue>map</font>[string]*sql.Conn
        - txMut sync.Mutex
        - txMap <font color=blue>map</font>[string]driver.Tx
        - stMut sync.RWMutex
        - stMap <font color=blue>map</font>[string]driver.Stmt
        - rowsMut sync.RWMutex
        - rowsMap <font color=blue>map</font>[string]driver.Rows

        + Conn(isMaster bool) (string, error)
        + ConnPing(connID string) error
        + ConnQuery(connID string, q string, args []driver.NamedValue) (string, error)
        + ConnExec(connID string, q string, args []driver.NamedValue) (plugin.ResultContainer, error)
        + ConnClose(connID string) error
        + Tx(connID string, opts driver.TxOptions) (string, error)
        + TxCommit(txID string) error
        + TxRollback(txID string) error
        + Stmt(connID string, q string) (string, error)
        + StmtClose(stID string) error
        + StmtNumInput(stID string) int
        + StmtQuery(stID string, args []driver.NamedValue) (string, error)
        + StmtExec(stID string, args []driver.NamedValue) (plugin.ResultContainer, error)
        + RowsColumns(rowsID string) []string
        + RowsClose(rowsID string) error
        + RowsNext(rowsID string, dest []driver.Value) error
        + RowsHasNextResultSet(rowsID string) bool
        + RowsNextResultSet(rowsID string) error
        + RowsColumnTypeDatabaseTypeName(rowsID string, index int) string
        + RowsColumnTypePrecisionScale(rowsID string, index int) (int64, int64, bool)

    }
    class JWTClaims << (S,Aquamarine) >> {
        + LicenseID string
        + ActiveUsers int64

    }
    class LocalResponseWriter << (S,Aquamarine) >> {
        - data []byte
        - headers http.Header
        - status int

        + Header() http.Header
        + Write(bytes []byte) (int, error)
        + WriteHeader(statusCode int) 

    }
    class MailToLinkContent << (S,Aquamarine) >> {
        + MetricId string
        + MailRecipient string
        + MailCC string
        + MailSubject string
        + MailBody string

        + ToJSON() string

    }
    class MentionKeywords << (S,Aquamarine) >> {
        + AddUser(profile *model.User, channelNotifyProps <font color=blue>map</font>[string]string, status *model.Status, allowChannelMentions bool) MentionKeywords
        + AddUserKeyword(userID string, keyword string) MentionKeywords
        + AddGroup(group *model.Group) MentionKeywords
        + AddGroupsMap(groups <font color=blue>map</font>[string]*model.Group) MentionKeywords

    }
    interface MentionParser  {
        + ProcessText(text string) 
        + Results() *MentionResults

    }
    class MentionResults << (S,Aquamarine) >> {
        + Mentions <font color=blue>map</font>[string]MentionType
        + GroupMentions <font color=blue>map</font>[string]MentionType
        + OtherPotentialMentions []string
        + HereMentioned bool
        + AllMentioned bool
        + ChannelMentioned bool

        - isUserMentioned(userID string) bool
        - addMention(userID string, mentionType MentionType) 
        - removeMention(userID string) 
        - addGroupMention(groupID string) 

    }
    class MentionableID << (S,Aquamarine) >> {
        + AsUserID() (string, bool)
        + AsGroupID() (string, bool)

    }
    class PluginAPI << (S,Aquamarine) >> {
        - id string
        - app *App
        - ctx request.CTX
        - logger mlog.Sugar
        - manifest *model.Manifest

        + LoadPluginConfiguration(dest any) error
        + RegisterCommand(command *model.Command) error
        + UnregisterCommand(teamID string, trigger string) error
        + ExecuteSlashCommand(commandArgs *model.CommandArgs) (*model.CommandResponse, error)
        + GetConfig() *model.Config
        + GetUnsanitizedConfig() *model.Config
        + SaveConfig(config *model.Config) *model.AppError
        + GetPluginConfig() <font color=blue>map</font>[string]any
        + SavePluginConfig(pluginConfig <font color=blue>map</font>[string]any) *model.AppError
        + GetBundlePath() (string, error)
        + GetLicense() *model.License
        + IsEnterpriseReady() bool
        + GetServerVersion() string
        + GetSystemInstallDate() (int64, *model.AppError)
        + GetDiagnosticId() string
        + GetTelemetryId() string
        + CreateTeam(team *model.Team) (*model.Team, *model.AppError)
        + DeleteTeam(teamID string) *model.AppError
        + GetTeams() ([]*model.Team, *model.AppError)
        + GetTeam(teamID string) (*model.Team, *model.AppError)
        + SearchTeams(term string) ([]*model.Team, *model.AppError)
        + GetTeamByName(name string) (*model.Team, *model.AppError)
        + GetTeamsUnreadForUser(userID string) ([]*model.TeamUnread, *model.AppError)
        + UpdateTeam(team *model.Team) (*model.Team, *model.AppError)
        + GetTeamsForUser(userID string) ([]*model.Team, *model.AppError)
        + CreateTeamMember(teamID string, userID string) (*model.TeamMember, *model.AppError)
        + CreateTeamMembers(teamID string, userIDs []string, requestorId string) ([]*model.TeamMember, *model.AppError)
        + CreateTeamMembersGracefully(teamID string, userIDs []string, requestorId string) ([]*model.TeamMemberWithError, *model.AppError)
        + DeleteTeamMember(teamID string, userID string, requestorId string) *model.AppError
        + GetTeamMembers(teamID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + GetTeamMember(teamID string, userID string) (*model.TeamMember, *model.AppError)
        + GetTeamMembersForUser(userID string, page int, perPage int) ([]*model.TeamMember, *model.AppError)
        + UpdateTeamMemberRoles(teamID string, userID string, newRoles string) (*model.TeamMember, *model.AppError)
        + GetTeamStats(teamID string) (*model.TeamStats, *model.AppError)
        + CreateUser(user *model.User) (*model.User, *model.AppError)
        + DeleteUser(userID string) *model.AppError
        + GetUsers(options *model.UserGetOptions) ([]*model.User, *model.AppError)
        + GetUser(userID string) (*model.User, *model.AppError)
        + GetUserByEmail(email string) (*model.User, *model.AppError)
        + GetUserByUsername(name string) (*model.User, *model.AppError)
        + GetUserByRemoteID(remoteID string) (*model.User, *model.AppError)
        + GetUsersByUsernames(usernames []string) ([]*model.User, *model.AppError)
        + GetUsersInTeam(teamID string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetPreferenceForUser(userID string, category string, name string) (model.Preference, *model.AppError)
        + GetPreferencesForUser(userID string) ([]model.Preference, *model.AppError)
        + UpdatePreferencesForUser(userID string, preferences []model.Preference) *model.AppError
        + DeletePreferencesForUser(userID string, preferences []model.Preference) *model.AppError
        + GetSession(sessionID string) (*model.Session, *model.AppError)
        + CreateSession(session *model.Session) (*model.Session, *model.AppError)
        + ExtendSessionExpiry(sessionID string, expiresAt int64) *model.AppError
        + RevokeSession(sessionID string) *model.AppError
        + CreateUserAccessToken(token *model.UserAccessToken) (*model.UserAccessToken, *model.AppError)
        + RevokeUserAccessToken(tokenID string) *model.AppError
        + UpdateUser(user *model.User) (*model.User, *model.AppError)
        + UpdateUserAuth(userID string, userAuth *model.UserAuth) (*model.UserAuth, *model.AppError)
        + UpdateUserActive(userID string, active bool) *model.AppError
        + GetUserStatus(userID string) (*model.Status, *model.AppError)
        + GetUserStatusesByIds(userIDs []string) ([]*model.Status, *model.AppError)
        + UpdateUserStatus(userID string, status string) (*model.Status, *model.AppError)
        + SetUserStatusTimedDND(userID string, endTime int64) (*model.Status, *model.AppError)
        + UpdateUserCustomStatus(userID string, customStatus *model.CustomStatus) *model.AppError
        + RemoveUserCustomStatus(userID string) *model.AppError
        + GetUserCustomStatus(userID string) (*model.CustomStatus, *model.AppError)
        + GetUsersInChannel(channelID string, sortBy string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetLDAPUserAttributes(userID string, attributes []string) (<font color=blue>map</font>[string]string, *model.AppError)
        + CreateChannel(channel *model.Channel) (*model.Channel, *model.AppError)
        + DeleteChannel(channelID string) *model.AppError
        + GetPublicChannelsForTeam(teamID string, page int, perPage int) ([]*model.Channel, *model.AppError)
        + GetChannel(channelID string) (*model.Channel, *model.AppError)
        + GetChannelByName(teamID string, name string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelByNameForTeamName(teamName string, channelName string, includeDeleted bool) (*model.Channel, *model.AppError)
        + GetChannelsForTeamForUser(teamID string, userID string, includeDeleted bool) ([]*model.Channel, *model.AppError)
        + GetChannelStats(channelID string) (*model.ChannelStats, *model.AppError)
        + GetDirectChannel(userID1 string, userID2 string) (*model.Channel, *model.AppError)
        + GetGroupChannel(userIDs []string) (*model.Channel, *model.AppError)
        + UpdateChannel(channel *model.Channel) (*model.Channel, *model.AppError)
        + SearchChannels(teamID string, term string) ([]*model.Channel, *model.AppError)
        + CreateChannelSidebarCategory(userID string, teamID string, newCategory *model.SidebarCategoryWithChannels) (*model.SidebarCategoryWithChannels, *model.AppError)
        + GetChannelSidebarCategories(userID string, teamID string) (*model.OrderedSidebarCategories, *model.AppError)
        + UpdateChannelSidebarCategories(userID string, teamID string, categories []*model.SidebarCategoryWithChannels) ([]*model.SidebarCategoryWithChannels, *model.AppError)
        + SearchUsers(search *model.UserSearch) ([]*model.User, *model.AppError)
        + SearchPostsInTeam(teamID string, paramsList []*model.SearchParams) ([]*model.Post, *model.AppError)
        + SearchPostsInTeamForUser(teamID string, userID string, searchParams model.SearchParameter) (*model.PostSearchResults, *model.AppError)
        + AddChannelMember(channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + AddUserToChannel(channelID string, userID string, asUserID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMember(channelID string, userID string) (*model.ChannelMember, *model.AppError)
        + GetChannelMembers(channelID string, page int, perPage int) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersByIds(channelID string, userIDs []string) (model.ChannelMembers, *model.AppError)
        + GetChannelMembersForUser(_ string, userID string, page int, perPage int) ([]*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberRoles(channelID string, userID string, newRoles string) (*model.ChannelMember, *model.AppError)
        + UpdateChannelMemberNotifications(channelID string, userID string, notifications <font color=blue>map</font>[string]string) (*model.ChannelMember, *model.AppError)
        + PatchChannelMembersNotifications(members []*model.ChannelMemberIdentifier, notifications <font color=blue>map</font>[string]string) *model.AppError
        + DeleteChannelMember(channelID string, userID string) *model.AppError
        + GetGroup(groupId string) (*model.Group, *model.AppError)
        + GetGroupByName(name string) (*model.Group, *model.AppError)
        + GetGroupMemberUsers(groupID string, page int, perPage int) ([]*model.User, *model.AppError)
        + GetGroupsBySource(groupSource model.GroupSource) ([]*model.Group, *model.AppError)
        + GetGroupsForUser(userID string) ([]*model.Group, *model.AppError)
        + CreatePost(post *model.Post) (*model.Post, *model.AppError)
        + AddReaction(reaction *model.Reaction) (*model.Reaction, *model.AppError)
        + RemoveReaction(reaction *model.Reaction) *model.AppError
        + GetReactions(postID string) ([]*model.Reaction, *model.AppError)
        + SendEphemeralPost(userID string, post *model.Post) *model.Post
        + UpdateEphemeralPost(userID string, post *model.Post) *model.Post
        + DeleteEphemeralPost(userID string, postID string) 
        + DeletePost(postID string) *model.AppError
        + GetPostThread(postID string) (*model.PostList, *model.AppError)
        + GetPost(postID string) (*model.Post, *model.AppError)
        + GetPostsSince(channelID string, time int64) (*model.PostList, *model.AppError)
        + GetPostsAfter(channelID string, postID string, page int, perPage int) (*model.PostList, *model.AppError)
        + GetPostsBefore(channelID string, postID string, page int, perPage int) (*model.PostList, *model.AppError)
        + GetPostsForChannel(channelID string, page int, perPage int) (*model.PostList, *model.AppError)
        + UpdatePost(post *model.Post) (*model.Post, *model.AppError)
        + GetProfileImage(userID string) ([]byte, *model.AppError)
        + SetProfileImage(userID string, data []byte) *model.AppError
        + GetEmojiList(sortBy string, page int, perPage int) ([]*model.Emoji, *model.AppError)
        + GetEmojiByName(name string) (*model.Emoji, *model.AppError)
        + GetEmoji(emojiId string) (*model.Emoji, *model.AppError)
        + CopyFileInfos(userID string, fileIDs []string) ([]string, *model.AppError)
        + GetFileInfo(fileID string) (*model.FileInfo, *model.AppError)
        + SetFileSearchableContent(fileID string, content string) *model.AppError
        + GetFileInfos(page int, perPage int, opt *model.GetFileInfosOptions) ([]*model.FileInfo, *model.AppError)
        + GetFileLink(fileID string) (string, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + GetFile(fileID string) ([]byte, *model.AppError)
        + UploadFile(data []byte, channelID string, filename string) (*model.FileInfo, *model.AppError)
        + GetEmojiImage(emojiId string) ([]byte, string, *model.AppError)
        + GetTeamIcon(teamID string) ([]byte, *model.AppError)
        + SetTeamIcon(teamID string, data []byte) *model.AppError
        + OpenInteractiveDialog(dialog model.OpenDialogRequest) *model.AppError
        + RemoveTeamIcon(teamID string) *model.AppError
        + SendMail(to string, subject string, htmlBody string) *model.AppError
        + GetPlugins() ([]*model.Manifest, *model.AppError)
        + EnablePlugin(id string) *model.AppError
        + DisablePlugin(id string) *model.AppError
        + RemovePlugin(id string) *model.AppError
        + GetPluginStatus(id string) (*model.PluginStatus, *model.AppError)
        + InstallPlugin(file io.Reader, replace bool) (*model.Manifest, *model.AppError)
        + KVSetWithOptions(key string, value []byte, options model.PluginKVSetOptions) (bool, *model.AppError)
        + KVSet(key string, value []byte) *model.AppError
        + KVCompareAndSet(key string, oldValue []byte, newValue []byte) (bool, *model.AppError)
        + KVCompareAndDelete(key string, oldValue []byte) (bool, *model.AppError)
        + KVSetWithExpiry(key string, value []byte, expireInSeconds int64) *model.AppError
        + KVGet(key string) ([]byte, *model.AppError)
        + KVDelete(key string) *model.AppError
        + KVDeleteAll() *model.AppError
        + KVList(page int, perPage int) ([]string, *model.AppError)
        + PublishWebSocketEvent(event string, payload <font color=blue>map</font>[string]any, broadcast *model.WebsocketBroadcast) 
        + HasPermissionTo(userID string, permission *model.Permission) bool
        + HasPermissionToTeam(userID string, teamID string, permission *model.Permission) bool
        + HasPermissionToChannel(userID string, channelID string, permission *model.Permission) bool
        + RolesGrantPermission(roleNames []string, permissionId string) bool
        + LogDebug(msg string, keyValuePairs ...any) 
        + LogInfo(msg string, keyValuePairs ...any) 
        + LogError(msg string, keyValuePairs ...any) 
        + LogWarn(msg string, keyValuePairs ...any) 
        + CreateBot(bot *model.Bot) (*model.Bot, *model.AppError)
        + PatchBot(userID string, botPatch *model.BotPatch) (*model.Bot, *model.AppError)
        + GetBot(userID string, includeDeleted bool) (*model.Bot, *model.AppError)
        + GetBots(options *model.BotGetOptions) ([]*model.Bot, *model.AppError)
        + UpdateBotActive(userID string, active bool) (*model.Bot, *model.AppError)
        + PermanentDeleteBot(userID string) *model.AppError
        + EnsureBotUser(bot *model.Bot) (string, error)
        + PublishUserTyping(userID string, channelID string, parentId string) *model.AppError
        + PluginHTTP(request *http.Request) *http.Response
        + CreateCommand(cmd *model.Command) (*model.Command, error)
        + ListCommands(teamID string) ([]*model.Command, error)
        + ListCustomCommands(teamID string) ([]*model.Command, error)
        + ListPluginCommands(teamID string) ([]*model.Command, error)
        + ListBuiltInCommands() ([]*model.Command, error)
        + GetCommand(commandID string) (*model.Command, error)
        + UpdateCommand(commandID string, updatedCmd *model.Command) (*model.Command, error)
        + DeleteCommand(commandID string) error
        + CreateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + GetOAuthApp(appID string) (*model.OAuthApp, *model.AppError)
        + UpdateOAuthApp(app *model.OAuthApp) (*model.OAuthApp, *model.AppError)
        + DeleteOAuthApp(appID string) *model.AppError
        + PublishPluginClusterEvent(ev model.PluginClusterEvent, opts model.PluginClusterEventSendOptions) error
        + RequestTrialLicense(requesterID string, users int, termsAccepted bool, receiveEmailsAccepted bool) *model.AppError
        + GetCloudLimits() (*model.ProductLimits, error)
        + RegisterCollectionAndTopic(collectionType string, topicType string) error
        + CreateUploadSession(us *model.UploadSession) (*model.UploadSession, error)
        + UploadData(us *model.UploadSession, rd io.Reader) (*model.FileInfo, error)
        + GetUploadSession(uploadID string) (*model.UploadSession, error)
        + SendPushNotification(notification *model.PushNotification, userID string) *model.AppError
        + RegisterPluginForSharedChannels(opts model.RegisterPluginOpts) (string, error)
        + UnregisterPluginForSharedChannels(pluginID string) error
        + ShareChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + UpdateSharedChannelCursor(channelID string, remoteID string, cusror model.GetPostsSinceForSyncCursor) error
        + SyncSharedChannel(channelID string) error
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error

    }
    class PluginCommand << (S,Aquamarine) >> {
        + Command *model.Command
        + PluginId string

    }
    class PluginResponseWriter << (S,Aquamarine) >> {
        - headers http.Header
        - statusCode int

        + Header() http.Header
        + WriteHeader(statusCode int) 
        + GenerateResponse() *http.Response

    }
    class PostNotification << (S,Aquamarine) >> {
        + Channel *model.Channel
        + Post *model.Post
        + ProfileMap <font color=blue>map</font>[string]*model.User
        + Sender *model.User

        + GetChannelName(userNameFormat string, excludeId string) string
        + GetSenderName(userNameFormat string, overridesAllowed bool) string

    }
    class PushNotification << (S,Aquamarine) >> {
        - notificationType notificationType
        - currentSessionId string
        - userID string
        - channelID string
        - rootID string
        - post *model.Post
        - user *model.User
        - channel *model.Channel
        - senderName string
        - channelName string
        - explicitMention bool
        - channelWideMention bool
        - replyToThreadType string

    }
    class PushNotificationsHub << (S,Aquamarine) >> {
        - notificationsChan <font color=blue>chan</font> PushNotification
        - app *App
        - sema <font color=blue>chan</font> <font color=blue>struct</font>{}
        - stopChan <font color=blue>chan</font> <font color=blue>struct</font>{}
        - wg *sync.WaitGroup
        - semaWg *sync.WaitGroup
        - buffer int

        - start(c request.CTX) 
        - stop() 

    }
    class RateLimiter << (S,Aquamarine) >> {
        - throttledRateLimiter *throttled.GCRARateLimiter
        - useAuth bool
        - useIP bool
        - header string
        - trustedProxyIPHeader []string

        + GenerateKey(r *http.Request) string
        + RateLimitWriter(key string, w http.ResponseWriter) bool
        + UserIdRateLimit(userID string, w http.ResponseWriter) bool
        + RateLimitHandler(wrappedHandler http.Handler) http.Handler

    }
    class Server << (S,Aquamarine) >> {
        - localModeServer *http.Server
        - didFinishListen <font color=blue>chan</font> <font color=blue>struct</font>{}
        - httpService httpservice.HTTPService
        - pushNotificationClient *http.Client
        - outgoingWebhookClient *http.Client
        - runEssentialJobs bool
        - timezones *timezones.Timezones
        - htmlTemplateWatcher *templates.Container
        - seenPendingPostIdsCache cache.Cache
        - openGraphDataCache cache.Cache
        - clusterLeaderListenerId string
        - loggerLicenseListenerId string
        - platform *platform.PlatformService
        - platformOptions []platform.Option
        - telemetryService *telemetry.TelemetryService
        - userService *users.UserService
        - teamService *teams.TeamService
        - serviceMux sync.RWMutex
        - remoteClusterService remotecluster.RemoteClusterServiceIFace
        - sharedChannelService SharedChannelServiceIFace
        - phase2PermissionsMigrationComplete bool
        - joinCluster bool
        - skipPostInit bool
        - tracer *tracing.Tracer
        - ch *Channels

        + RootRouter *mux.Router
        + LocalRouter *mux.Router
        + Router *mux.Router
        + Server *http.Server
        + ListenAddr *net.TCPAddr
        + RateLimiter *RateLimiter
        + EmailService email.ServiceInterface
        + PushNotificationsHub PushNotificationsHub
        + Jobs *jobs.JobServer
        + Audit *audit.Audit
        + Cloud einterfaces.CloudInterface
        + IPFiltering einterfaces.IPFilteringInterface
        + OutgoingOAuthConnection einterfaces.OutgoingOAuthConnectionInterface

        - getFirstServerRunTimestamp() (int64, *model.AppError)
        - configureAudit(adt *audit.Audit, bAllowAdvancedLogging bool) error
        - onAuditTargetQueueFull(qname string, maxQSize int) bool
        - onAuditError(err error) 
        - getChannel(c request.CTX, channelID string) (*model.Channel, *model.AppError)
        - getChannelsForTeamForUser(c request.CTX, teamID string, userID string, opts *model.ChannelSearchOpts) (model.ChannelList, *model.AppError)
        - getChannelMember(c request.CTX, channelID string, userID string) (*model.ChannelMember, *model.AppError)
        - getChannelMemberLastViewedAt(c request.CTX, channelID string, userID string) (int64, *model.AppError)
        - getDirectChannel(c request.CTX, userID string, otherUserID string) (*model.Channel, *model.AppError)
        - clusterInstallPluginHandler(msg *model.ClusterMessage) 
        - clusterRemovePluginHandler(msg *model.ClusterMessage) 
        - clusterPluginEventHandler(msg *model.ClusterMessage) 
        - registerClusterHandlers() 
        - ensureInstallationDate() error
        - ensureFirstServerRunTimestamp() error
        - downloadFromURL(downloadURL string) ([]byte, error)
        - initEnterprise() 
        - fileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        - exportFileReader(path string) (filestore.ReadCloseSeeker, *model.AppError)
        - fileExists(path string) (bool, *model.AppError)
        - exportFileExists(path string) (bool, *model.AppError)
        - writeFile(fr io.Reader, path string) (int64, *model.AppError)
        - writeExportFile(fr io.Reader, path string) (int64, *model.AppError)
        - writeFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        - writeExportFileContext(ctx context.Context, fr io.Reader, path string) (int64, *model.AppError)
        - removeFile(path string) *model.AppError
        - removeExportFile(path string) *model.AppError
        - listDirectory(path string, recursion bool) ([]string, *model.AppError)
        - listExportDirectory(path string, recursion bool) ([]string, *model.AppError)
        - getFileInfo(fileID string) (*model.FileInfo, *model.AppError)
        - doAdvancedPermissionsMigration() 
        - doEmojisPermissionsMigration() 
        - doGuestRolesCreationMigration() 
        - doSystemConsoleRolesCreationMigration() 
        - doCustomGroupAdminRoleCreationMigration() 
        - doContentExtractionConfigDefaultTrueMigration() 
        - doPlaybooksRolesCreationMigration() 
        - doFirstAdminSetupCompleteMigration() 
        - doRemainingSchemaMigrations() 
        - doPostPriorityConfigDefaultTrueMigration() 
        - doElasticsearchFixChannelIndex(c request.CTX) 
        - elasticsearchFixChannelIndex(c request.CTX, license *model.License) 
        - doCloudS3PathMigrations(c request.CTX) 
        - doDeleteEmptyDraftsMigration(c request.CTX) 
        - doDeleteOrphanDraftsMigration(c request.CTX) 
        - doAppMigrations() 
        - createPushNotificationsHub(c request.CTX) 
        - doPermissionsMigration(key string, migrationMap permissionsMap, roles []*model.Role) *model.AppError
        - doPermissionsMigrations() error
        - getPluginKey(pluginID string, key string) ([]byte, *model.AppError)
        - getPublicKey(name string) ([]byte, *model.AppError)
        - initPostMetadata() 
        - mergeChannelHigherScopedPermissions(roles []*model.Role) *model.AppError
        - runJobs() 
        - startInterClusterServices(license *model.License) error
        - startLocalModeServer() error
        - stopLocalModeServer() 
        - checkPushNotificationServerURL() 
        - runLicenseExpirationCheckJob() 
        - sendLicenseUpForRenewalEmail(users <font color=blue>map</font>[string]*model.User, license *model.License) *model.AppError
        - doLicenseExpirationCheck() 
        - initJobs() 
        - makeBroadcastHooks() <font color=blue>map</font>[string]platform.BroadcastHook

        + GetLogs(c request.CTX, page int, perPage int) ([]string, *model.AppError)
        + QueryLogs(c request.CTX, page int, perPage int, logFilter *model.LogFilter) (<font color=blue>map</font>[string][]string, *model.AppError)
        + GetLogsSkipSend(page int, perPage int, logFilter *model.LogFilter) ([]string, *model.AppError)
        + InvalidateAllCaches() *model.AppError
        + InvalidateAllCachesSkipSend() 
        + TemplatesContainer() *templates.Container
        + AddClusterLeaderChangedListener(listener <font color=blue>func</font>() ) string
        + RemoveClusterLeaderChangedListener(id string) 
        + InvokeClusterLeaderChangedListeners() 
        + IsLeader() bool
        + Config() *model.Config
        + MailServiceConfig() *mail.SMTPConfig
        + License() *model.License
        + LoadLicense() 
        + SaveLicense(licenseBytes []byte) (*model.License, *model.AppError)
        + SetLicense(license *model.License) bool
        + ValidateAndSetLicenseBytes(b []byte) bool
        + SetClientLicense(m <font color=blue>map</font>[string]string) 
        + ClientLicense() <font color=blue>map</font>[string]string
        + RemoveLicense() *model.AppError
        + AddLicenseListener(listener <font color=blue>func</font>(*model.License, *model.License) ) string
        + RemoveLicenseListener(id string) 
        + GetSanitizedClientLicense() <font color=blue>map</font>[string]string
        + GenerateRenewalToken(expiration time.Duration) (string, *model.AppError)
        + GenerateLicenseRenewalLink() (string, string, *model.AppError)
        + StopPushNotificationsHubWorkers() 
        + GetRoleByName(ctx context.Context, name string) (*model.Role, *model.AppError)
        + GetSchemes(scope string, offset int, limit int) ([]*model.Scheme, *model.AppError)
        + IsPhase2MigrationCompleted() *model.AppError
        + DoSecurityUpdateCheck() 
        + Store() store.Store
        + SetStore(st store.Store) 
        + AppOptions() []AppOption
        + Channels() *Channels
        + DatabaseTypeAndSchemaVersion() (string, string)
        + StopHTTPServer() 
        + Shutdown() 
        + Restart() error
        + CanIUpgradeToE0() error
        + UpgradeToE0() error
        + UpgradeToE0Status() (int64, error)
        + Go(f <font color=blue>func</font>() ) 
        + GoBuffered(f <font color=blue>func</font>() ) 
        + Start() error
        + HandleMetrics(route string, h http.Handler) 
        + SendRemoveExpiredLicenseEmail(email string, ctaText string, ctaLink string, locale string, siteURL string) *model.AppError
        + FileBackend() filestore.FileBackend
        + ExportFileBackend() filestore.FileBackend
        + TotalWebsocketConnections() int
        + ClusterHealthScore() int
        + TelemetryId() string
        + HTTPService() httpservice.HTTPService
        + GetStore() store.Store
        + GetRemoteClusterService() remotecluster.RemoteClusterServiceIFace
        + GetSharedChannelSyncService() SharedChannelServiceIFace
        + GetMetrics() einterfaces.MetricsInterface
        + SetRemoteClusterService(remoteClusterService remotecluster.RemoteClusterServiceIFace) 
        + SetSharedChannelSyncService(sharedChannelService SharedChannelServiceIFace) 
        + GetProfileImage(user *model.User) ([]byte, bool, *model.AppError)
        + GetDefaultProfileImage(user *model.User) ([]byte, *model.AppError)
        + ReadFile(path string) ([]byte, *model.AppError)
        + Platform() *platform.PlatformService
        + Log() *mlog.Logger
        + NotificationsLog() *mlog.Logger
        + GetTelemetryService() *telemetry.TelemetryService

    }
    interface SharedChannelServiceIFace  {
        + Shutdown() error
        + Start() error
        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userID string) 
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + Active() bool
        + InviteRemoteToChannel(channelID string, remoteID string, userID string, shareIfNotShared bool) error
        + UninviteRemoteFromChannel(channelID string, remoteID string) error
        + ShareChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UpdateSharedChannel(sc *model.SharedChannel) (*model.SharedChannel, error)
        + UnshareChannel(channelID string) (bool, error)
        + CheckChannelNotShared(channelID string) error
        + CheckChannelIsShared(channelID string) error
        + CheckCanInviteToSharedChannel(channelId string) error

    }
    class StandardMentionParser << (S,Aquamarine) >> {
        - keywords MentionKeywords
        - results *MentionResults

        - checkForMention(word string) bool
        - addMentions(ids []MentionableID, mentionType MentionType) 

        + ProcessText(text string) 
        + Results() *MentionResults

    }
    class TokenLocation << (S,Aquamarine) >> {
        + String() string

    }
    class UploadFileTask << (S,Aquamarine) >> {
        - buf *bytes.Buffer
        - limit int64
        - limitedInput io.Reader
        - teeInput io.Reader
        - fileinfo *model.FileInfo
        - maxFileSize int64
        - maxImageRes int64
        - decoded image.Image
        - imageType string
        - imageOrientation int
        - pluginsEnvironment *plugin.Environment
        - writeFile <font color=blue>func</font>(io.Reader, string) (int64, *model.AppError)
        - saveToDatabase <font color=blue>func</font>(request.CTX, *model.FileInfo) (*model.FileInfo, error)
        - imgDecoder *imaging.Decoder
        - imgEncoder *imaging.Encoder

        + Logger mlog.LoggerIFace
        + Name string
        + ChannelId string
        + TeamId string
        + UserId string
        + Timestamp time.Time
        + ContentLength int64
        + Input io.Reader
        + ClientId string
        + Raw bool

        - init(a *App) 
        - preprocessImage() *model.AppError
        - postprocessImage(file io.Reader) 
        - pathPrefix() string
        - newAppError(id string, httpStatus int, extra ...any) *model.AppError

    }
    class accessibleBounds << (S,Aquamarine) >> {
        - start int
        - end int

        - allAccessible(lenPosts int) bool
        - noAccessible() bool
        - getInaccessibleRange(listLength int) (int, int)

    }
    class actionData << (S,Aquamarine) >> {
        - event string
        - createUserID string
        - selectChannelID string
        - selectTeamID string
        - invalidateConnUserID string
        - updateConnUserID string
        - attachment <font color=blue>map</font>[string]any

    }
    class addFollowersBroadcastHook << (S,Aquamarine) >> {
        + Process(msg *platform.HookedWebSocketEvent, webConn *platform.WebConn, args <font color=blue>map</font>[string]any) error

    }
    class addMentionsBroadcastHook << (S,Aquamarine) >> {
        + Process(msg *platform.HookedWebSocketEvent, webConn *platform.WebConn, args <font color=blue>map</font>[string]any) error

    }
    class app.AppOption << (T, #FF7700) >>  {
    }
    class app.AppOptionCreator << (T, #FF7700) >>  {
    }
    class app.MentionKeywords << (T, #FF7700) >>  {
    }
    class app.MentionType << (T, #FF7700) >>  {
    }
    class app.MentionableID << (T, #FF7700) >>  {
    }
    class app.Option << (T, #FF7700) >>  {
    }
    class app.ReactionImportData << (T, #FF7700) >>  {
    }
    class app.TokenLocation << (T, #FF7700) >>  {
    }
    class app.notificationType << (T, #FF7700) >>  {
    }
    class app.notifyPropsReason << (T, #FF7700) >>  {
    }
    class app.permissionsMap << (T, #FF7700) >>  {
    }
    class app.pluginInstallationStrategy << (T, #FF7700) >>  {
    }
    class app.statusReason << (T, #FF7700) >>  {
    }
    class categoryChannelDiff << (S,Aquamarine) >> {
        - fromCategoryId string
        - toCategoryId string

    }
    interface configService  {
        + Config() *model.Config
        + AddConfigListener(listener <font color=blue>func</font>(*model.Config, *model.Config) ) string
        + RemoveConfigListener(id string) 
        + UpdateConfig(f <font color=blue>func</font>(*model.Config) ) 
        + SaveConfig(newCfg *model.Config, sendConfigChangeClusterMessage bool) (*model.Config, *model.Config, *model.AppError)

    }
    class filterFileOptions << (S,Aquamarine) >> {
        - assumeSortedCreatedAt bool

    }
    class filterPostOptions << (S,Aquamarine) >> {
        - assumeSortedCreatedAt bool

    }
    class linkMetadataCache << (S,Aquamarine) >> {
        + OpenGraph *opengraph.OpenGraph
        + PostImage *model.PostImage
        + Permalink *model.Permalink

    }
    class mockSharedChannelService << (S,Aquamarine) >> {
        - channelNotifications []string
        - userProfileNotifications []string
        - numInvitations int

        + NotifyChannelChanged(channelId string) 
        + NotifyUserProfileChanged(userId string) 
        + Shutdown() error
        + Start() error
        + Active() bool
        + SendChannelInvite(channel *model.Channel, userId string, rc *model.RemoteCluster, options ...sharedchannel.InviteOption) error
        + NumInvitations() int

    }
    class permissionTransformation << (S,Aquamarine) >> {
        + On <font color=blue>func</font>(*model.Role, <font color=blue>map</font>[string]<font color=blue>map</font>[string]bool) bool
        + Add []string
        + Remove []string

    }
    class pluginSignaturePath << (S,Aquamarine) >> {
        - pluginID string
        - bundlePath string
        - signaturePath string

    }
    class postAndData << (S,Aquamarine) >> {
        - post *model.Post
        - postData *imports.PostImportData
        - directPostData *imports.DirectPostImportData
        - replyData *imports.ReplyImportData
        - team *model.Team
        - lineNumber int

    }
    class postData << (S,Aquamarine) >> {
        + SenderName string
        + ChannelName string
        + Message template.HTML
        + MessageURL string
        + SenderPhoto string
        + PostPhoto string
        + Time string
        + ShowChannelIcon bool
        + OtherChannelMembersCount int
        + MessageAttachments []*email.EmailMessageAttachment

    }
    class "imports.ReactionImportData" as importsReactionImportData {
        'This class was created so that we can correctly have an alias pointing to this name. Since it contains dots that can break namespaces
    }
}
"jwt.RegisteredClaims" *-- "app.JWTClaims"
"bytes.Buffer" *-- "app.PluginResponseWriter"
"app.SharedChannelServiceIFace" *-- "app.mockSharedChannelService"

"app.AppIface" <|-- "app.App"
"app.configService" <|-- "app.App"
"app.MentionParser" <|-- "app.StandardMentionParser"

"__builtin__.int" #.. "app.MentionType"
"__builtin__.int" #.. "app.TokenLocation"
"__builtin__.int" #.. "app.pluginInstallationStrategy"
"__builtin__.string" #.. "app.MentionableID"
"__builtin__.string" #.. "app.notificationType"
"__builtin__.string" #.. "app.notifyPropsReason"
"__builtin__.string" #.. "app.statusReason"
"app.<font color=blue>func</font>() []AppOption" #.. "app.AppOptionCreator"
"app.<font color=blue>func</font>(*App) " #.. "app.AppOption"
"app.<font color=blue>func</font>(*Server) error" #.. "app.Option"
"app.<font color=blue>map</font>[string][]MentionableID" #.. "app.MentionKeywords"
"app.[]permissionTransformation" #.. "app.permissionsMap"
"app.importsReactionImportData" #.. "app.ReactionImportData"
hide methods
@enduml

```